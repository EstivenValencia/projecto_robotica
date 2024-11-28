#!/user/bin/python3
import sys
import copy
import rospy
import moveit_commander
import moveit_msgs.msg
import geometry_msgs.msg
from math import pi, tau, dist, fabs, cos
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
from typing import List
from geometry_msgs.msg import Pose
import yaml


class ControlRobot:

    def __init__(self, name_node: str) -> None:
        """
        Inicializa el nodo de ROS y configura el entorno de MoveIt.

        Args:
            - name_node (str): Nombre del nodo de ROS.
        """
        moveit_commander.roscpp_initialize(sys.argv)

        rospy.init_node(name_node, anonymous=True)
        self.robot = moveit_commander.RobotCommander()
        self.scene = moveit_commander.PlanningSceneInterface()

        self.group_name = "robot"
        self.move_group = moveit_commander.MoveGroupCommander(self.group_name)
        self.move_group.set_planning_time(10)
        self.add_floor()
        
    def get_motor_angles(self) -> list:
        """
        Obtiene los ángulos actuales de los motores del robot.

        Returns:
            list: Lista de ángulos actuales de los motores.
        """
        return self.move_group.get_current_joint_values()

    def move_motors(self, joint_goal: List[float], wait: bool = True) -> bool:
        """
        Mueve los motores del robot a la configuración deseada.

        Args:
            - joint_goal (List[float]): Lista de ángulos deseados para los motores.
            - wait (bool): Indica si se debe esperar a que el movimiento se complete.

        Returns:
            bool: Resultado del movimiento.
        """
        return self.move_group.go(joint_goal, wait=wait)

    def get_pose(self) -> Pose:
        """
        Obtiene la pose actual del efector final del robot.

        Returns:
            Pose: Pose actual del efector final.
        """
        return self.move_group.get_current_pose().pose

    def move_to_pose(self, pose_goal: Pose, wait: bool = True) -> bool:
        """
        Mueve el efector final del robot a la pose objetivo.

        Args:
            - pose_goal (Pose): Pose objetivo a la que se desea mover el robot.
            - wait (bool): Indica si se debe esperar a que el movimiento se complete.

        Returns:
            bool: Resultado del movimiento.
        """
        self.move_group.set_pose_target(pose_goal)
        return self.move_group.go(wait=wait)

    def move_to_trajectory(self, path: List[Pose]) -> None:
        """
        Mueve el robot a través de una trayectoria especificada.

        Args:
            - path (List[Pose]): Lista de poses que definen la trayectoria a seguir.
        """
        path.insert(0, self.get_pose())

        plan, fraction = self.move_group.compute_cartesian_path(
            path, 0.01,  # waypoints to follow  # eef_step
        )

        if fraction != 1.0:
            print(
                "No se puede completar la trayectoria debido a que solo se puede completar el siguiente porcentaje: ",
                fraction,
            )
            return fraction

        self.move_group.execute(plan, wait=True)
        return None

    def add_to_planning_scene(
        self, pose_caja: Pose, name: str = "box", tamano: tuple = (0.075, 0.075, 0.075)
    ) -> None:
        """
        Añade un objeto a la escena de planificación.

        Args:
            - pose_caja (Pose): Pose del objeto que se desea añadir.
            - name (str): Nombre del objeto a añadir.
            - tamano (tuple): Tamaño del objeto a añadir.
        """
        box_pose = geometry_msgs.msg.PoseStamped()
        box_pose.header.frame_id = "base_link"
        box_pose.pose = pose_caja
        box_name = name
        self.scene.add_box(box_name, box_pose, size=tamano)

    def add_floor(self) -> None:
        """
        Añade el suelo a la escena de planificación.
        """
        pose_suelo = Pose()
        pose_suelo.position.z = -0.025
        self.add_to_planning_scene(pose_suelo, "suelo", (2, 2, 0.05))

    def write_actual_cartesian_pose(
        self, filename: str = "cartesian_pose.yaml"
    ) -> None:
        """
        Escribe la pose cartesiana actual en un archivo YAML.

        Args:
            - filename (str): Nombre del archivo donde se guardará la pose.
        """
        pose = self.get_pose()

        global_info = {"cartesian_pose": pose}

        with open(filename, "+a") as f:
            yaml.dump(global_info, f)

    def write_actual_motors_pose(self, filename: str = "configuration.yaml") -> None:
        """
        Escribe la configuración actual de los motores en un archivo YAML.

        Args:
            - filename (str): Nombre del archivo donde se guardará la configuración.
        """
        configuration = self.get_motor_angles()

        global_configuration = {"configuration": configuration}

        with open(filename, "+a") as f:
            yaml.dump(global_configuration, f)

    def load_cartesian_pose(self, filename: str = "cartesian_pose.yaml") -> None:
        """
        Carga una pose cartesiana desde un archivo YAML.

        Args:
            - filename (str): Nombre del archivo desde donde se cargará la pose.
        """
        with open(filename, "+r") as f:
            self.load_poses = yaml.load(f, yaml.Loader)

    def load_motor_pose(self, filename: str = "configuration.yaml") -> None:
        """
        Carga la configuración de los motores desde un archivo YAML.

        Args:
            - filename (str): Nombre del archivo desde donde se cargará la configuración.
        """
        with open(filename, "+r") as f:
            self.load_configuration = yaml.load(f, yaml.Loader)


if __name__ == '__main__':
    robot = ControlRobot('robot')
    rate = rospy.Rate(1)
    while True:
        control = robot.get_motor_angles()
        print(control)
        rate.sleep()
