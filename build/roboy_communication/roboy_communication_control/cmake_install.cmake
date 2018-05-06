# Install script for directory: /home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/msg" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Behavior.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ControlLeds.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Emotion.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DangerNotification.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/ErrorNotification.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/WarningNotification.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/DebugNotification.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/InfoNotification.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/StartRecordTrajectory.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/msg/Strings.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/srv" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ListItems.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/MoveYaw.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/SetMode.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/srv/ShowEmotion.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/action" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/action/PerformMovement.action"
    "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/action/PerformMovements.action"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/msg" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementAction.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionGoal.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionResult.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementActionFeedback.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementGoal.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementResult.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/msg" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsAction.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionGoal.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionResult.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsActionFeedback.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsGoal.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsResult.msg"
    "/home/barisyazici/ss18_hand/devel/share/roboy_communication_control/msg/PerformMovementsFeedback.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_control/catkin_generated/installspace/roboy_communication_control-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/include/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/roseus/ros/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/common-lisp/ros/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/gennodejs/ros/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_control")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_control/catkin_generated/installspace/roboy_communication_control.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_control/catkin_generated/installspace/roboy_communication_control-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control/cmake" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_control/catkin_generated/installspace/roboy_communication_controlConfig.cmake"
    "/home/barisyazici/ss18_hand/build/roboy_communication/roboy_communication_control/catkin_generated/installspace/roboy_communication_controlConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_control" TYPE FILE FILES "/home/barisyazici/ss18_hand/src/roboy_communication/roboy_communication_control/package.xml")
endif()

