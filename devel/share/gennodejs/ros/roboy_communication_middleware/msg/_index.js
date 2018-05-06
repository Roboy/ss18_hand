
"use strict";

let HandCommand = require('./HandCommand.js');
let ControllerState = require('./ControllerState.js');
let MotorConfig = require('./MotorConfig.js');
let Status = require('./Status.js');
let RoboyState = require('./RoboyState.js');
let Position = require('./Position.js');
let Trajectory = require('./Trajectory.js');
let Initialize = require('./Initialize.js');
let DarkRoomStatistics = require('./DarkRoomStatistics.js');
let DarkRoomSensor = require('./DarkRoomSensor.js');
let HandStatus = require('./HandStatus.js');
let DarkRoomOOTX = require('./DarkRoomOOTX.js');
let ArucoPose = require('./ArucoPose.js');
let FingerCommand = require('./FingerCommand.js');
let JointCommand = require('./JointCommand.js');
let JointStatus = require('./JointStatus.js');
let MuscleState = require('./MuscleState.js');
let Steer = require('./Steer.js');
let LighthousePoseCorrection = require('./LighthousePoseCorrection.js');
let MotorAngle = require('./MotorAngle.js');
let Pose = require('./Pose.js');
let MotorTrajectoryControl = require('./MotorTrajectoryControl.js');
let MotorRecord = require('./MotorRecord.js');
let ADCvalue = require('./ADCvalue.js');
let MagneticSensor = require('./MagneticSensor.js');
let DarkRoom = require('./DarkRoom.js');
let ControllerRequest = require('./ControllerRequest.js');
let MotorCommand = require('./MotorCommand.js');
let JointAngle = require('./JointAngle.js');
let DanceCommand = require('./DanceCommand.js');
let MotorRecordConfig = require('./MotorRecordConfig.js');
let MotorStatus = require('./MotorStatus.js');

module.exports = {
  HandCommand: HandCommand,
  ControllerState: ControllerState,
  MotorConfig: MotorConfig,
  Status: Status,
  RoboyState: RoboyState,
  Position: Position,
  Trajectory: Trajectory,
  Initialize: Initialize,
  DarkRoomStatistics: DarkRoomStatistics,
  DarkRoomSensor: DarkRoomSensor,
  HandStatus: HandStatus,
  DarkRoomOOTX: DarkRoomOOTX,
  ArucoPose: ArucoPose,
  FingerCommand: FingerCommand,
  JointCommand: JointCommand,
  JointStatus: JointStatus,
  MuscleState: MuscleState,
  Steer: Steer,
  LighthousePoseCorrection: LighthousePoseCorrection,
  MotorAngle: MotorAngle,
  Pose: Pose,
  MotorTrajectoryControl: MotorTrajectoryControl,
  MotorRecord: MotorRecord,
  ADCvalue: ADCvalue,
  MagneticSensor: MagneticSensor,
  DarkRoom: DarkRoom,
  ControllerRequest: ControllerRequest,
  MotorCommand: MotorCommand,
  JointAngle: JointAngle,
  DanceCommand: DanceCommand,
  MotorRecordConfig: MotorRecordConfig,
  MotorStatus: MotorStatus,
};
