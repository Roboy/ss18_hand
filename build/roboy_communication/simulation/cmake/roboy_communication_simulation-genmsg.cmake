# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_communication_simulation: 17 messages, 2 services")

set(MSG_I_FLAGS "-Iroboy_communication_simulation:/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_communication_simulation_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" "geometry_msgs/Point"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" "roboy_communication_simulation/ControllerParameters"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_custom_target(_roboy_communication_simulation_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_simulation" "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Services
_generate_srv_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_srv_cpp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Module File
_generate_module_cpp(roboy_communication_simulation
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_communication_simulation_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_communication_simulation_generate_messages roboy_communication_simulation_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_cpp _roboy_communication_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_simulation_gencpp)
add_dependencies(roboy_communication_simulation_gencpp roboy_communication_simulation_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_simulation_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Services
_generate_srv_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)
_generate_srv_eus(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Module File
_generate_module_eus(roboy_communication_simulation
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_communication_simulation_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_communication_simulation_generate_messages roboy_communication_simulation_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_eus _roboy_communication_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_simulation_geneus)
add_dependencies(roboy_communication_simulation_geneus roboy_communication_simulation_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_simulation_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Services
_generate_srv_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)
_generate_srv_lisp(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Module File
_generate_module_lisp(roboy_communication_simulation
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_communication_simulation_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_communication_simulation_generate_messages roboy_communication_simulation_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_lisp _roboy_communication_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_simulation_genlisp)
add_dependencies(roboy_communication_simulation_genlisp roboy_communication_simulation_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_simulation_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Services
_generate_srv_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)
_generate_srv_nodejs(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Module File
_generate_module_nodejs(roboy_communication_simulation
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_communication_simulation_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_communication_simulation_generate_messages roboy_communication_simulation_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_nodejs _roboy_communication_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_simulation_gennodejs)
add_dependencies(roboy_communication_simulation_gennodejs roboy_communication_simulation_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_simulation_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_msg_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Services
_generate_srv_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)
_generate_srv_py(roboy_communication_simulation
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
)

### Generating Module File
_generate_module_py(roboy_communication_simulation
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_communication_simulation_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_communication_simulation_generate_messages roboy_communication_simulation_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg" NAME_WE)
add_dependencies(roboy_communication_simulation_generate_messages_py _roboy_communication_simulation_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_simulation_genpy)
add_dependencies(roboy_communication_simulation_genpy roboy_communication_simulation_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_simulation_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_simulation
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_simulation_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(roboy_communication_simulation_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_simulation_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_simulation
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_simulation_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(roboy_communication_simulation_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_simulation_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_simulation
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_simulation_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(roboy_communication_simulation_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_simulation_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_simulation
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_simulation_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(roboy_communication_simulation_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_simulation_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_simulation
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_communication_simulation_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(roboy_communication_simulation_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(roboy_communication_simulation_generate_messages_py geometry_msgs_generate_messages_py)
endif()
