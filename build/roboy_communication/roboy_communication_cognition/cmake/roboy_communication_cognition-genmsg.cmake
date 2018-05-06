# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "roboy_communication_cognition: 6 messages, 26 services")

set(MSG_I_FLAGS "-Iroboy_communication_cognition:/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(roboy_communication_cognition_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" ""
)

get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_custom_target(_roboy_communication_cognition_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "roboy_communication_cognition" "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Services
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_cpp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Module File
_generate_module_cpp(roboy_communication_cognition
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(roboy_communication_cognition_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(roboy_communication_cognition_generate_messages roboy_communication_cognition_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_cpp _roboy_communication_cognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_cognition_gencpp)
add_dependencies(roboy_communication_cognition_gencpp roboy_communication_cognition_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_cognition_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Services
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_eus(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Module File
_generate_module_eus(roboy_communication_cognition
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(roboy_communication_cognition_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(roboy_communication_cognition_generate_messages roboy_communication_cognition_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_eus _roboy_communication_cognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_cognition_geneus)
add_dependencies(roboy_communication_cognition_geneus roboy_communication_cognition_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_cognition_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Services
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_lisp(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Module File
_generate_module_lisp(roboy_communication_cognition
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(roboy_communication_cognition_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(roboy_communication_cognition_generate_messages roboy_communication_cognition_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_lisp _roboy_communication_cognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_cognition_genlisp)
add_dependencies(roboy_communication_cognition_genlisp roboy_communication_cognition_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_cognition_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Services
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_nodejs(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Module File
_generate_module_nodejs(roboy_communication_cognition
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(roboy_communication_cognition_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(roboy_communication_cognition_generate_messages roboy_communication_cognition_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_nodejs _roboy_communication_cognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_cognition_gennodejs)
add_dependencies(roboy_communication_cognition_gennodejs roboy_communication_cognition_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_cognition_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_msg_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Services
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)
_generate_srv_py(roboy_communication_cognition
  "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
)

### Generating Module File
_generate_module_py(roboy_communication_cognition
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(roboy_communication_cognition_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(roboy_communication_cognition_generate_messages roboy_communication_cognition_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv" NAME_WE)
add_dependencies(roboy_communication_cognition_generate_messages_py _roboy_communication_cognition_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(roboy_communication_cognition_genpy)
add_dependencies(roboy_communication_cognition_genpy roboy_communication_cognition_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS roboy_communication_cognition_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/roboy_communication_cognition
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(roboy_communication_cognition_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/roboy_communication_cognition
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(roboy_communication_cognition_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/roboy_communication_cognition
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(roboy_communication_cognition_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/roboy_communication_cognition
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(roboy_communication_cognition_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/roboy_communication_cognition
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(roboy_communication_cognition_generate_messages_py std_msgs_generate_messages_py)
endif()
