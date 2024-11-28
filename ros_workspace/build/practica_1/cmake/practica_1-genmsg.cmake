# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "practica_1: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ipractica_1:/home/laboratorio/ros_workspace/src/practica_1/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(practica_1_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_custom_target(_practica_1_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "practica_1" "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(practica_1
  "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practica_1
)

### Generating Services

### Generating Module File
_generate_module_cpp(practica_1
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practica_1
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(practica_1_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(practica_1_generate_messages practica_1_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_dependencies(practica_1_generate_messages_cpp _practica_1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practica_1_gencpp)
add_dependencies(practica_1_gencpp practica_1_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practica_1_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(practica_1
  "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practica_1
)

### Generating Services

### Generating Module File
_generate_module_eus(practica_1
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practica_1
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(practica_1_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(practica_1_generate_messages practica_1_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_dependencies(practica_1_generate_messages_eus _practica_1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practica_1_geneus)
add_dependencies(practica_1_geneus practica_1_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practica_1_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(practica_1
  "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practica_1
)

### Generating Services

### Generating Module File
_generate_module_lisp(practica_1
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practica_1
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(practica_1_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(practica_1_generate_messages practica_1_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_dependencies(practica_1_generate_messages_lisp _practica_1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practica_1_genlisp)
add_dependencies(practica_1_genlisp practica_1_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practica_1_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(practica_1
  "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practica_1
)

### Generating Services

### Generating Module File
_generate_module_nodejs(practica_1
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practica_1
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(practica_1_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(practica_1_generate_messages practica_1_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_dependencies(practica_1_generate_messages_nodejs _practica_1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practica_1_gennodejs)
add_dependencies(practica_1_gennodejs practica_1_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practica_1_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(practica_1
  "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practica_1
)

### Generating Services

### Generating Module File
_generate_module_py(practica_1
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practica_1
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(practica_1_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(practica_1_generate_messages practica_1_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/laboratorio/ros_workspace/src/practica_1/msg/Floor.msg" NAME_WE)
add_dependencies(practica_1_generate_messages_py _practica_1_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(practica_1_genpy)
add_dependencies(practica_1_genpy practica_1_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS practica_1_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practica_1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/practica_1
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(practica_1_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(practica_1_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practica_1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/practica_1
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(practica_1_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(practica_1_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practica_1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/practica_1
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(practica_1_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(practica_1_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practica_1)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/practica_1
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(practica_1_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(practica_1_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practica_1)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practica_1\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/practica_1
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(practica_1_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(practica_1_generate_messages_py geometry_msgs_generate_messages_py)
endif()
