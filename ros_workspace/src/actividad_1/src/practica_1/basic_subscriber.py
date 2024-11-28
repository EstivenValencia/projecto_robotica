#!/usr/bin/env python
import sys
import copy
import yaml
import rospy
from moveit_commander import MoveGroupCommander, RobotCommander, roscpp_initialize, PlanningSceneInterface
import moveit_msgs.msg
from math import pi, tau, dist, fabs, cos
from std_msgs.msg import String, Int32, Header
from moveit_commander.conversions import pose_to_list
from typing import List
from geometry_msgs.msg import Pose, PoseStamped, PoseArray
from sensor_msgs.msg import JointState

class ControlRobot:
    def __init__(self) -> None:
        roscpp_initialize(sys.argv)
        rospy.init_node("control_robot", anonymous=True)
        self.robot = RobotCommander()
        self.scene = PlanningSceneInterface()
        self.group_name = 'robot'
        self.move_group = MoveGroupCommander(self.group_name)

        # Inicializar el nodo suscriptor.
        self.subscriber = rospy.Subscriber("/consignas", Int32, self.callback)

    def get_motor_angles(self) -> list: # Obtener ángulos de motores
        return self.move_group.get_current_joint_values()

    def move_motors(self, joint_goal: List[float]) -> bool: # Mover motores
        return self.move_group.go(joint_goal, wait=True) # wait espera hasta finalizar movimiento antes de seguir con el programa.

    def get_pose(self) -> Pose: # Obtener la pose actual
        return self.move_group.get_current_pose().pose

    def move_to_pose(self, pose_goal: Pose)-> bool: # Mover a una pose
        self.move_group.set_pose_target(pose_goal)
        return self.move_group.go(wait=True)

    def add_to_planning_scene(self, pose_caja: Pose,
                              name: str, tamaño: tuple = (.1, .1, .1)) -> None:

        box_pose = PoseStamped()
        box_pose.header.frame_id = 'base_link'
        box_pose.pose = pose_caja
        box_name = name
        self.scene.add_box(box_name, box_pose, size=tamaño)

    def move_trajectory(self, poses: List[Pose], wait: bool = True) -> bool:
        (plan, fraction) = self.move_group.compute_cartesian_path(poses, 0.01)
        
        return self.move_group.execute(plan, wait=wait)

    def add_floor(self) -> None:
        pose_suelo = Pose()
        pose_suelo.position.z = -0.025 # Para no chocar con la base
        self.add_to_planning_scene(pose_suelo, 'suelo', (2, 2, .03)) 

    # Definir función para extraer configuración inicial y usarla después.
    def get_initial_conf(self, archivo="/home/laboratorio/ros_workspace/src/actividad_1/src/practica_1/confs_y_poses/configuraciones.yaml") -> JointState:
        with open(archivo, "r") as f:
            conf_data = yaml.safe_load(f)
            conf_position = conf_data["configuracion_inicial"]

            conf = JointState()
            conf.header.stamp = rospy.Time.now()
            conf.position = conf_position

        return conf.position

    # Del mismo modo extraer una pose.
    def get_initial_pose(self, archivo="/home/laboratorio/ros_workspace/src/actividad_1/src/practica_1/confs_y_poses/poses.yaml") -> Pose:
        with open(archivo, "r") as f:
            pose_data = yaml.safe_load(f)
        
        x_position = pose_data["pose_inicial"]["position"]["x"]
        y_position = pose_data["pose_inicial"]["position"]["y"]
        z_position = pose_data["pose_inicial"]["position"]["z"]
        w_orientation = pose_data["pose_inicial"]["orientation"]["w"]
        x_orientation = pose_data["pose_inicial"]["orientation"]["x"]
        y_orientation = pose_data["pose_inicial"]["orientation"]["y"]
        z_orientation = pose_data["pose_inicial"]["orientation"]["z"]

        # Pasar a tipo Pose
        pose = Pose()
        pose.position.x = x_position
        pose.position.y = y_position
        pose.position.z = z_position
        pose.orientation.w = w_orientation
        pose.orientation.x = x_orientation
        pose.orientation.y = y_orientation
        pose.orientation.z = z_orientation

        return pose
    
    # Y una trayectoria
    def get_initial_trajectory(self) -> List[Pose]:
        self.current_pose = self.get_pose()
        waypoints = [self.current_pose]

        self.current_pose.position.z -= 0.05
        waypoints.append(copy.deepcopy(self.current_pose))

        self.current_pose.position.x += 0.1
        waypoints.append(copy.deepcopy(self.current_pose))

        return waypoints

    # Aquí se realiza una u otra acción en función del mensaje recibido.
    def callback(self, data: Int32) -> None:
        msg = data.data
        print('He recibido:' , msg)

        if msg == 1:
            print('Ejecutando orden 1: Añadiendo suelo a la simulación...')
            self.add_floor()

        elif msg == 2:
            print('Ejecutando orden 2: Moviendo motores a la configuración deseada...')
            self.conf = self.get_initial_conf()
            self.move_motors(self.conf)

        elif msg == 3:
            print('Ejecutando orden 3: Moviendo robot según trayectoria deseada...')
            self.trajectory = self.get_initial_trajectory()
            self.move_trajectory(poses=self.trajectory, wait=True)

        else:
            print('Ejecutando orden 4: Moviendo motores a la pose deseada...')
            self.pose = self.get_initial_pose()
            self.move_motors(self.conf)

    def action(self) -> None:
        # El nodo suscriptor creado en el __init__ empieza a funcionar
        # gracias al .spin() (se activa el callback).
        rospy.spin()

if __name__ == "__main__":
    control = ControlRobot()
    # Empezamos a ejecutar ordenes asociadas a mensajes que llegan.
    control.action()