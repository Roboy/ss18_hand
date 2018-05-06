# Install script for directory: /home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/barisyazici/ss18_hand/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition/msg" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioData.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/AudioInfo.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/DirectionVector.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/FaceCoordinates.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/NewFacialFeatures.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/msg/SpeechSynthesis.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition/srv" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/AssertProperty.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CallQuery.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckProperty.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CheckQuery.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/CreateInstance.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DataQuery.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DescribeScene.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectFace.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/DetectIntent.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/EvalSeq2Seq.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindInstances.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/FindObject.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GenerateAnswer.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/GetObject.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/LookAtSpeaker.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTone.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/QualityOfTones.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeObject.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/RecognizeSpeech.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/SaveObject.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowInstances.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowProperty.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/ShowPropertyValue.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/Talk.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/TrainSeq2Seq.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/srv/WhichTones.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_cognition/catkin_generated/installspace/roboy_communication_cognition-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/include/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/roseus/ros/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/common-lisp/ros/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/gennodejs/ros/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_cognition")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_cognition/catkin_generated/installspace/roboy_communication_cognition.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_cognition/catkin_generated/installspace/roboy_communication_cognition-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition/cmake" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_cognition/catkin_generated/installspace/roboy_communication_cognitionConfig.cmake"
    "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_cognition/catkin_generated/installspace/roboy_communication_cognitionConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_cognition" TYPE FILE FILES "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_cognition/package.xml")
endif()

