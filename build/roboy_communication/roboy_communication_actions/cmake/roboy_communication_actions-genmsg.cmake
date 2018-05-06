# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_communication_actions: 14 messages, 0 services")

set(MSG_I_FLAGS "-Iroboy_communication_actions:/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_communication_actions_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" "roboy_communication_actions/PerformMovementResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" "roboy_communication_actions/PerformMovementFeedback:roboy_communication_actions/PerformMovementActionResult:std_msgs/Header:roboy_communication_actions/PerformMovementResult:roboy_communication_actions/PerformMovementActionGoal:roboy_communication_actions/PerformMovementGoal:roboy_communication_actions/PerformMovementActionFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" "actionlib_msgs/GoalID:roboy_communication_actions/PerformMovementsFeedback:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" "roboy_communication_actions/PerformMovementGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" "roboy_communication_actions/PerformMovementFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" "actionlib_msgs/GoalID:roboy_communication_actions/PerformMovementsGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" "actionlib_msgs/GoalID:roboy_communication_actions/PerformMovementsResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_custom_target(_roboy_communication_actions_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_actions" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" "roboy_communication_actions/PerformMovementsActionFeedback:roboy_communication_actions/PerformMovementsGoal:std_msgs/Header:roboy_communication_actions/PerformMovementsActionResult:roboy_communication_actions/PerformMovementsActionGoal:roboy_communication_actions/PerformMovementsResult:actionlib_msgs/GoalID:roboy_communication_actions/PerformMovementsFeedback:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_cpp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
)

### Generating Services

### Generating Module File
_generate_module_cpp(roboy_communication_actions
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_communication_actions_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_communication_actions_generate_messages roboy_communication_actions_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_cpp _roboy_communication_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_actions_gencpp)
add_dependencies(roboy_communication_actions_gencpp roboy_communication_actions_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_actions_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_eus(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
)

### Generating Services

### Generating Module File
_generate_module_eus(roboy_communication_actions
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_communication_actions_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_communication_actions_generate_messages roboy_communication_actions_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_eus _roboy_communication_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_actions_geneus)
add_dependencies(roboy_communication_actions_geneus roboy_communication_actions_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_actions_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_lisp(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
)

### Generating Services

### Generating Module File
_generate_module_lisp(roboy_communication_actions
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_communication_actions_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_communication_actions_generate_messages roboy_communication_actions_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_lisp _roboy_communication_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_actions_genlisp)
add_dependencies(roboy_communication_actions_genlisp roboy_communication_actions_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_actions_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_nodejs(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
)

### Generating Services

### Generating Module File
_generate_module_nodejs(roboy_communication_actions
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_communication_actions_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_communication_actions_generate_messages roboy_communication_actions_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_nodejs _roboy_communication_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_actions_gennodejs)
add_dependencies(roboy_communication_actions_gennodejs roboy_communication_actions_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_actions_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)
_generate_msg_py(roboy_communication_actions
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
)

### Generating Services

### Generating Module File
_generate_module_py(roboy_communication_actions
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_communication_actions_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_communication_actions_generate_messages roboy_communication_actions_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_actions/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_actions_generate_messages_py _roboy_communication_actions_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_actions_genpy)
add_dependencies(roboy_communication_actions_genpy roboy_communication_actions_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_actions_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_actions
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_actions_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(roboy_communication_actions_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_actions_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_actions
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_actions_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(roboy_communication_actions_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_actions_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_actions
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_actions_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(roboy_communication_actions_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_actions_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_actions
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_actions_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(roboy_communication_actions_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_actions_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_actions
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_communication_actions_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(roboy_communication_actions_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(roboy_communication_actions_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
