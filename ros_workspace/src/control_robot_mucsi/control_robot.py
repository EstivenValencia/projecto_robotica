#!/usr/bin/python3

# ejecutar en cada terminal source devel/setup.bash antes de activar simulador

import sys
import copy
import rospy
from moveit_commander import MoveGroupCommander, RobotCommander, roscpp_initialize, PlanningSceneInterface
import moveit_msgs.msg
from math import pi, tau, dist, fabs, cos
from std_msgs.msg import String
from moveit_commander.conversions import pose_to_list
from typing import List
from geometry_msgs.msg import Pose, PoseStamped

class ControlRobot:
    def __init__(self) -> None:
        roscpp_initialize(sys.argv)
        rospy.init_node("control_robot", anonymous=True)
        self.robot = RobotCommander()
        self.scene = PlanningSceneInterface()
        self.group_name = 'robot'
        self.move_group = MoveGroupCommander(self.group_name)
        self.add_floor()

    def get_motor_angles(self) -> list: # Obtener ángulos de motores
        return self.move_group.get_current_joint_values()

    def move_motors(self, joint_goal: List[float]) -> bool: # Mover motores
        return self.move_group.go(joint_goal, wait=True) #wait espera hasta finalizar movimiento antes de seguir con el programa.

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
        (plan, fraction) = self.move_group.compute_cartesian_path(poses, 0.01, 0.0)

        if fraction != 1.0:
            return False
        
        self.move_group.execute(plan, wait=wait)

    def add_floor(self) -> None:
        pose_suelo = Pose()
        pose_suelo.position.z = -0.025 # Para no chocar con la base
        self.add_to_planning_scene(pose_suelo, 'suelo', (2, 2, .05)) 

if __name__=='__main__':
    control = ControlRobot()
    waypoints = []
    pose = control.get_pose()

    pose.position.z += 0.1
    pose.position.y += 0.2
    waypoints.append(copy.deepcopy(pose))

    pose.position.x += 0.1
    waypoints.append(copy.deepcopy(pose))

    pose.position.y -= 0.1
    waypoints.append(copy.deepcopy(pose))

    control.move_trajectory(poses=waypoints)




