# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "paquete_practica1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipaquete_practica1:/home/laboratorio/ros_workspace/src/paquete_practica1/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(paquete_practica1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_custom_target(_paquete_practica1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "paquete_practica1" "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" "std_msgs/Float32:geometry_msgs/Pose:geometry_msgs/Quaternion:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(paquete_practica1
  "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paquete_practica1
)

### Generating Services

### Generating Module File
_generate_module_cpp(paquete_practica1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paquete_practica1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(paquete_practica1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(paquete_practica1_generate_messages paquete_practica1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_dependencies(paquete_practica1_generate_messages_cpp _paquete_practica1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paquete_practica1_gencpp)
add_dependencies(paquete_practica1_gencpp paquete_practica1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paquete_practica1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(paquete_practica1
  "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paquete_practica1
)

### Generating Services

### Generating Module File
_generate_module_eus(paquete_practica1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paquete_practica1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(paquete_practica1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(paquete_practica1_generate_messages paquete_practica1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_dependencies(paquete_practica1_generate_messages_eus _paquete_practica1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paquete_practica1_geneus)
add_dependencies(paquete_practica1_geneus paquete_practica1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paquete_practica1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(paquete_practica1
  "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paquete_practica1
)

### Generating Services

### Generating Module File
_generate_module_lisp(paquete_practica1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paquete_practica1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(paquete_practica1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(paquete_practica1_generate_messages paquete_practica1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_dependencies(paquete_practica1_generate_messages_lisp _paquete_practica1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paquete_practica1_genlisp)
add_dependencies(paquete_practica1_genlisp paquete_practica1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paquete_practica1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(paquete_practica1
  "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paquete_practica1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(paquete_practica1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paquete_practica1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(paquete_practica1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(paquete_practica1_generate_messages paquete_practica1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_dependencies(paquete_practica1_generate_messages_nodejs _paquete_practica1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paquete_practica1_gennodejs)
add_dependencies(paquete_practica1_gennodejs paquete_practica1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paquete_practica1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(paquete_practica1
  "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paquete_practica1
)

### Generating Services

### Generating Module File
_generate_module_py(paquete_practica1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paquete_practica1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(paquete_practica1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(paquete_practica1_generate_messages paquete_practica1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/paquete_practica1/msg/FloatPose.msg" NAME_WE)
add_dependencies(paquete_practica1_generate_messages_py _paquete_practica1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(paquete_practica1_genpy)
add_dependencies(paquete_practica1_genpy paquete_practica1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS paquete_practica1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paquete_practica1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/paquete_practica1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(paquete_practica1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(paquete_practica1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paquete_practica1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/paquete_practica1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(paquete_practica1_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(paquete_practica1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paquete_practica1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/paquete_practica1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(paquete_practica1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(paquete_practica1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paquete_practica1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/paquete_practica1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(paquete_practica1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(paquete_practica1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paquete_practica1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paquete_practica1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/paquete_practica1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(paquete_practica1_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(paquete_practica1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
