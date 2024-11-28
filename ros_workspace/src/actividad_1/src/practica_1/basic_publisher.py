#!/usr/bin/env python
import rospy
from std_msgs.msg import Int32

def publish():
    # Iniciar nodo que va a publicar.
    rospy.init_node('basic_publisher', anonymous=True)
    # Crear el publicador para mensajes tipo Int16.
    pub = rospy.Publisher("/consignas", Int32, queue_size=10)
    # Indicar cuántas veces por segundo se va a publicar.
    rate = rospy.Rate(1) # 1 vez/s.

    print("===============================================")
    print('1 -> Añadir suelo a la escena.\n2 -> Mover el robot a una configuración.')
    print('3 -> Mover el robot siguiendo una trayectoria.\n4 -> Mover el robot a una pose.')
    print("===============================================")

    # Bucle para publicar mientras no pare el programa.
    while not rospy.is_shutdown():
        # Pedir input numérico al usuario.
        msg_data = int(input("Ingrese el valor a publicar: "))
        # Transformar input a tipo Int32.
        msg = Int32()
        msg.data = msg_data
        # Publicar
        pub.publish(msg)
        rate.sleep() # Esperar según lo indicado en rate.

if __name__ == "__main__":
    try:
        publish()
    except rospy.ROSInterruptException:
        pass
