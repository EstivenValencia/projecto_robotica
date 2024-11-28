#!/usr/bin/python3

import rospy
from std_msgs.msg import String, Int16
from geometry_msgs.msg import Pose, PoseArray
from paquete_practica1.msg import FloatPose
from sensor_msgs.msg import JointState
from math import pi, tau, dist, fabs, cos
import copy
import tf.transformations as tf

class ReadCamera:
    def __init__(self) -> None:
        pass


    def __init__(self, nombre_nodo: str = "nodo_global"):
        """
        Inicializa el nodo de ROS

        Args:
            - nombre_nodo (str): Nombre del nodo de ROS.
        """
        super().__init__(nombre_nodo)
        self.mover_home()
    def mover_home(self):
        """
        Mueve el robot a una posicion "home" predeterminada.

        """

        configuracion = [0, -pi / 2, 0, 0, pi/2, 0]
        self.move_motors(configuracion)


    def callback_mover_pose(self, data: Pose) -> None:
        """
        Callback para mover el robot a una pose dada.

        Args:
            - data (Pose): La pose a la que se desea mover el robot.
        """
        pose_inicial = self.get_pose()
        print("Pose inicial: \n\n", pose_inicial)

        # Mantiene la orientacion actual del robot
        data.orientation.x = pose_inicial.orientation.x
        data.orientation.y = pose_inicial.orientation.y
        data.orientation.z = pose_inicial.orientation.z
        data.orientation.w = pose_inicial.orientation.w

        self.move_to_pose(data)

        pose_final = self.get_pose()
        print("Pose final: \n\n", pose_final)

