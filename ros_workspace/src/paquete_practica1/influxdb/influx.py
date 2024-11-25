#!/usr/bin/env python3
from influxdb_client import InfluxDBClient, Point
from influxdb_client.client.write_api import SYNCHRONOUS
from datetime import datetime
import rospy
from sensor_msgs.msg import JointState
from std_msgs.msg import Bool
from time import time_ns

# Configuración
url = "http://localhost:8086"  # URL del servidor InfluxDB
#url = "https://deusto-influxdb-001-v2qrmk5znqme3f.eu-west-1.timestream-influxdb.amazonaws.com:8086/"  # URL del servidor InfluxDB
token = "uRtXecp9Cd4Uhu6yFnlVv1DTQgRxSDiir-pnhn2MoTckUD5sishfoX8-nZCHsSUH6nvaxnEllRUPrubIlmY6Tw=="  # Token de autenticación
org = "Robotica"  # Organización (configurada en la interfaz web)
bucket = "datos_robot"  # Bucket donde se insertarán los datos

# Conexión al cliente
client = InfluxDBClient(url=url, token=token, org=org)

# Crea un punto de datos
write_api = client.write_api(write_options=SYNCHRONOUS)
    
moving = False

def check_movement(msg):
    global moving
    moving = msg.data

def joint_states_callback(msg):
    """
    Callback para procesar los datos del topic /joint_states.
    """
    if moving:
        try:
            # Itera sobre las juntas y sus valores
            for i, name in enumerate(msg.name):
                position = msg.position[i] if len(msg.position) > i else None
                velocity = msg.velocity[i] if len(msg.velocity) > i else None
                effort = msg.effort[i] if len(msg.effort) > i else None

                # Define un punto de datos para InfluxDB
                point = (
                    Point("datos")  # Nombre de la medición
                    .tag("name", name)  # Etiqueta para el nombre de la junta
                    .field("position", position)  # Campo: posición
                    .field("velocity", velocity)  # Campo: velocidad
                    .field("effort", effort)  # Campo: esfuerzo
                    .time(datetime.now())  # Hora actual
                )

                # Inserta el punto en InfluxDB
                write_api.write(bucket=bucket, org=org, record=point)
                rospy.loginfo(f"Insertado en InfluxDB: {name}, pos={position}, vel={velocity}, eff={effort}")

        except Exception as e:
            rospy.logerr(f"Error al insertar datos en InfluxDB: {e}")

def main():
    # Inicializa el nodo ROS
    rospy.init_node("joint_states_to_influx")
    
    rospy.Subscriber("/moving", Bool, check_movement)

    # Suscríbete al topic /joint_states
    rospy.Subscriber("/joint_states", JointState, joint_states_callback)


    rospy.loginfo("Nodo suscrito a /joint_states y conectado a InfluxDB.")
    rospy.spin()

    # Cierra el cliente al finalizar
    client.close()

if __name__ == "__main__":
    try:
        main()
    except rospy.ROSInterruptException:
        pass