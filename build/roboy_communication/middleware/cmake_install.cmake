# Install script for directory: /home/barisyazici/ss18_hand/src/roboy_communication/middleware

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware/msg" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/ADCvalue.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/ArucoPose.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/ControllerRequest.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/ControllerState.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/DanceCommand.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/DarkRoom.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/DarkRoomOOTX.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/DarkRoomSensor.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/DarkRoomStatistics.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/FingerCommand.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/HandStatus.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/HandCommand.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/JointAngle.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/JointCommand.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/JointStatus.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/LighthousePoseCorrection.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MagneticSensor.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorAngle.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorStatus.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorCommand.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorConfig.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorRecordConfig.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorRecord.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MotorTrajectoryControl.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/MuscleState.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/Pose.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/Position.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/RoboyState.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/Steer.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/Status.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/msg/Trajectory.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware/srv" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/ControlMode.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/DanceTrajectory.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/Initialize.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/InverseKinematics.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/MotorCalibrationService.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/MotorConfigService.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/Record.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/SetInt16.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/SetTrajectory.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/SystemCheck.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/srv/EmergencyStop.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/middleware/catkin_generated/installspace/roboy_communication_middleware-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/include/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/roseus/ros/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/common-lisp/ros/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/gennodejs/ros/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_middleware")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/middleware/catkin_generated/installspace/roboy_communication_middleware.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/middleware/catkin_generated/installspace/roboy_communication_middleware-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware/cmake" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/build/roboy_communication/middleware/catkin_generated/installspace/roboy_communication_middlewareConfig.cmake"
    "/home/barisyazici/ss18_hand/build/roboy_communication/middleware/catkin_generated/installspace/roboy_communication_middlewareConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_middleware" TYPE FILE FILES "/home/barisyazici/ss18_hand/src/roboy_communication/middleware/package.xml")
endif()

