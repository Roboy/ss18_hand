# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_communication_control: 24 messages, 4 services")

set(MSG_I_FLAGS "-Iroboy_communication_control:/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg;-Iroboy_communication_control:/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_communication_control_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" "roboy_communication_control/PerformMovementsGoal:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:roboy_communication_control/PerformMovementGoal"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" "roboy_communication_control/PerformMovementsActionResult:roboy_communication_control/PerformMovementsActionFeedback:roboy_communication_control/PerformMovementsGoal:roboy_communication_control/PerformMovementsActionGoal:roboy_communication_control/PerformMovementsResult:std_msgs/Header:roboy_communication_control/PerformMovementsFeedback:actionlib_msgs/GoalID:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" "actionlib_msgs/GoalID:roboy_communication_control/PerformMovementsResult:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" "roboy_communication_control/PerformMovementActionFeedback:actionlib_msgs/GoalStatus:roboy_communication_control/PerformMovementActionResult:roboy_communication_control/PerformMovementActionGoal:roboy_communication_control/PerformMovementFeedback:roboy_communication_control/PerformMovementGoal:roboy_communication_control/PerformMovementResult:actionlib_msgs/GoalID:std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" "roboy_communication_control/PerformMovementFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" "roboy_communication_control/PerformMovementsFeedback:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" "roboy_communication_control/PerformMovementResult:actionlib_msgs/GoalID:std_msgs/Header:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_custom_target(_roboy_communication_control_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_control" "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)

### Generating Services
_generate_srv_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_cpp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
)

### Generating Module File
_generate_module_cpp(roboy_communication_control
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_communication_control_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_communication_control_generate_messages roboy_communication_control_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_cpp _roboy_communication_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_control_gencpp)
add_dependencies(roboy_communication_control_gencpp roboy_communication_control_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_control_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)

### Generating Services
_generate_srv_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_eus(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
)

### Generating Module File
_generate_module_eus(roboy_communication_control
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_communication_control_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_communication_control_generate_messages roboy_communication_control_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_eus _roboy_communication_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_control_geneus)
add_dependencies(roboy_communication_control_geneus roboy_communication_control_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_control_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)

### Generating Services
_generate_srv_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_lisp(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
)

### Generating Module File
_generate_module_lisp(roboy_communication_control
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_communication_control_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_communication_control_generate_messages roboy_communication_control_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_lisp _roboy_communication_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_control_genlisp)
add_dependencies(roboy_communication_control_genlisp roboy_communication_control_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_control_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)

### Generating Services
_generate_srv_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_nodejs(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
)

### Generating Module File
_generate_module_nodejs(roboy_communication_control
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_communication_control_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_communication_control_generate_messages roboy_communication_control_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_nodejs _roboy_communication_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_control_gennodejs)
add_dependencies(roboy_communication_control_gennodejs roboy_communication_control_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_control_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_msg_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)

### Generating Services
_generate_srv_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)
_generate_srv_py(roboy_communication_control
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
)

### Generating Module File
_generate_module_py(roboy_communication_control
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_communication_control_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_communication_control_generate_messages roboy_communication_control_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg" NAME_WE)
add_dependencies(roboy_communication_control_generate_messages_py _roboy_communication_control_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_control_genpy)
add_dependencies(roboy_communication_control_genpy roboy_communication_control_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_control_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_control
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_control_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(roboy_communication_control_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_control_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_control
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_control_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(roboy_communication_control_generate_messages_eus std_srvs_generate_messages_eus)
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_control_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_control
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_control_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(roboy_communication_control_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_control_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_control
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_control_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(roboy_communication_control_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_control_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_control
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_communication_control_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(roboy_communication_control_generate_messages_py std_srvs_generate_messages_py)
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(roboy_communication_control_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
