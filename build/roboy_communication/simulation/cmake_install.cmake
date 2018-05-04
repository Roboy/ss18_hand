# Install script for directory: /home/barisyazici/ss18_hand/src/roboy_communication/simulation

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation/msgs" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Abortion.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/BodyPart.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/COM.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ControllerParameters.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ExternalForce.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/ForceTorque.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/IMU.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Input.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Joint.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/LegState.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Model.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/MotorControl.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/RecordingControl.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/Tendon.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonInitialization.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/TendonUpdate.msg"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/msgs/VisualizationControl.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation/srvs" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/UpdateControllerParameters.srv"
    "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/srvs/Energies.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/simulation/catkin_generated/installspace/roboy_communication_simulation-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/include/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/roseus/ros/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/common-lisp/ros/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/share/gennodejs/ros/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/barisyazici/ss18_hand/devel/lib/python2.7/dist-packages/roboy_communication_simulation")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/simulation/catkin_generated/installspace/roboy_communication_simulation.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation/cmake" TYPE FILE FILES "/home/barisyazici/ss18_hand/build/roboy_communication/simulation/catkin_generated/installspace/roboy_communication_simulation-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation/cmake" TYPE FILE FILES
    "/home/barisyazici/ss18_hand/build/roboy_communication/simulation/catkin_generated/installspace/roboy_communication_simulationConfig.cmake"
    "/home/barisyazici/ss18_hand/build/roboy_communication/simulation/catkin_generated/installspace/roboy_communication_simulationConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roboy_communication_simulation" TYPE FILE FILES "/home/barisyazici/ss18_hand/src/roboy_communication/simulation/package.xml")
endif()

