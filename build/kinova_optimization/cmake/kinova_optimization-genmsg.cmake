# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kinova_optimization: 2 messages, 3 services")

set(MSG_I_FLAGS "-Ikinova_optimization:/home/dashingzombie/catkin_ws/src/kinova_optimization/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Ivisualization_msgs:/opt/ros/noetic/share/visualization_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kinova_optimization_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_custom_target(_kinova_optimization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinova_optimization" "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" "geometry_msgs/Point:geometry_msgs/Pose:geometry_msgs/Quaternion:std_msgs/Header:std_msgs/String"
)

get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_custom_target(_kinova_optimization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinova_optimization" "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" "std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:std_msgs/MultiArrayDimension:std_msgs/Header:std_msgs/String"
)

get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_custom_target(_kinova_optimization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinova_optimization" "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" "geometry_msgs/Point:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:geometry_msgs/Pose:std_msgs/MultiArrayDimension:kinova_optimization/EEPoseGoals:geometry_msgs/Quaternion:kinova_optimization/JointAngles:std_msgs/Header:std_msgs/String"
)

get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_custom_target(_kinova_optimization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinova_optimization" "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" "geometry_msgs/Point:std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:geometry_msgs/Pose:std_msgs/MultiArrayDimension:kinova_optimization/EEPoseGoals:geometry_msgs/Quaternion:kinova_optimization/JointAngles:std_msgs/Header:std_msgs/String"
)

get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_custom_target(_kinova_optimization_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kinova_optimization" "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" "std_msgs/MultiArrayLayout:std_msgs/Float64MultiArray:std_msgs/MultiArrayDimension:std_msgs/Bool:kinova_optimization/JointAngles:std_msgs/Header:std_msgs/String"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
)
_generate_msg_cpp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
)

### Generating Services
_generate_srv_cpp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
)
_generate_srv_cpp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
)
_generate_srv_cpp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
)

### Generating Module File
_generate_module_cpp(kinova_optimization
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kinova_optimization_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kinova_optimization_generate_messages kinova_optimization_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_cpp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_cpp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_cpp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_cpp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_cpp _kinova_optimization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinova_optimization_gencpp)
add_dependencies(kinova_optimization_gencpp kinova_optimization_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinova_optimization_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
)
_generate_msg_eus(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
)

### Generating Services
_generate_srv_eus(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
)
_generate_srv_eus(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
)
_generate_srv_eus(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
)

### Generating Module File
_generate_module_eus(kinova_optimization
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kinova_optimization_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kinova_optimization_generate_messages kinova_optimization_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_eus _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_eus _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_eus _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_eus _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_eus _kinova_optimization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinova_optimization_geneus)
add_dependencies(kinova_optimization_geneus kinova_optimization_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinova_optimization_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
)
_generate_msg_lisp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
)

### Generating Services
_generate_srv_lisp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
)
_generate_srv_lisp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
)
_generate_srv_lisp(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
)

### Generating Module File
_generate_module_lisp(kinova_optimization
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kinova_optimization_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kinova_optimization_generate_messages kinova_optimization_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_lisp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_lisp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_lisp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_lisp _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_lisp _kinova_optimization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinova_optimization_genlisp)
add_dependencies(kinova_optimization_genlisp kinova_optimization_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinova_optimization_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
)
_generate_msg_nodejs(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
)

### Generating Services
_generate_srv_nodejs(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
)
_generate_srv_nodejs(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
)
_generate_srv_nodejs(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
)

### Generating Module File
_generate_module_nodejs(kinova_optimization
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kinova_optimization_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kinova_optimization_generate_messages kinova_optimization_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_nodejs _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_nodejs _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_nodejs _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_nodejs _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_nodejs _kinova_optimization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinova_optimization_gennodejs)
add_dependencies(kinova_optimization_gennodejs kinova_optimization_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinova_optimization_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
)
_generate_msg_py(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
)

### Generating Services
_generate_srv_py(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
)
_generate_srv_py(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
)
_generate_srv_py(kinova_optimization
  "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayLayout.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float64MultiArray.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/MultiArrayDimension.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Bool.msg;/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/String.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
)

### Generating Module File
_generate_module_py(kinova_optimization
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kinova_optimization_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kinova_optimization_generate_messages kinova_optimization_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/EEPoseGoals.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_py _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/msg/JointAngles.msg" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_py _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/RelaxedIKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_py _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/IKSolution.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_py _kinova_optimization_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/dashingzombie/catkin_ws/src/kinova_optimization/srv/SelfCollisionQuery.srv" NAME_WE)
add_dependencies(kinova_optimization_generate_messages_py _kinova_optimization_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kinova_optimization_genpy)
add_dependencies(kinova_optimization_genpy kinova_optimization_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kinova_optimization_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kinova_optimization
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kinova_optimization_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(kinova_optimization_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET visualization_msgs_generate_messages_cpp)
  add_dependencies(kinova_optimization_generate_messages_cpp visualization_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kinova_optimization
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kinova_optimization_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(kinova_optimization_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET visualization_msgs_generate_messages_eus)
  add_dependencies(kinova_optimization_generate_messages_eus visualization_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kinova_optimization
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kinova_optimization_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(kinova_optimization_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET visualization_msgs_generate_messages_lisp)
  add_dependencies(kinova_optimization_generate_messages_lisp visualization_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kinova_optimization
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kinova_optimization_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(kinova_optimization_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET visualization_msgs_generate_messages_nodejs)
  add_dependencies(kinova_optimization_generate_messages_nodejs visualization_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kinova_optimization
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kinova_optimization_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(kinova_optimization_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET visualization_msgs_generate_messages_py)
  add_dependencies(kinova_optimization_generate_messages_py visualization_msgs_generate_messages_py)
endif()
