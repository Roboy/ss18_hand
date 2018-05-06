// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorStatus = require('./MotorStatus.js');

//-----------------------------------------------------------

class MuscleState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.qx = null;
      this.qy = null;
      this.qz = null;
      this.qw = null;
      this.motor_status = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = [];
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = [];
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = [];
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = [];
      }
      if (initObj.hasOwnProperty('qx')) {
        this.qx = initObj.qx
      }
      else {
        this.qx = [];
      }
      if (initObj.hasOwnProperty('qy')) {
        this.qy = initObj.qy
      }
      else {
        this.qy = [];
      }
      if (initObj.hasOwnProperty('qz')) {
        this.qz = initObj.qz
      }
      else {
        this.qz = [];
      }
      if (initObj.hasOwnProperty('qw')) {
        this.qw = initObj.qw
      }
      else {
        this.qw = [];
      }
      if (initObj.hasOwnProperty('motor_status')) {
        this.motor_status = initObj.motor_status
      }
      else {
        this.motor_status = new MotorStatus();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MuscleState
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, null);
    // Serialize message field [x]
    bufferOffset = _arraySerializer.float32(obj.x, buffer, bufferOffset, null);
    // Serialize message field [y]
    bufferOffset = _arraySerializer.float32(obj.y, buffer, bufferOffset, null);
    // Serialize message field [z]
    bufferOffset = _arraySerializer.float32(obj.z, buffer, bufferOffset, null);
    // Serialize message field [qx]
    bufferOffset = _arraySerializer.float32(obj.qx, buffer, bufferOffset, null);
    // Serialize message field [qy]
    bufferOffset = _arraySerializer.float32(obj.qy, buffer, bufferOffset, null);
    // Serialize message field [qz]
    bufferOffset = _arraySerializer.float32(obj.qz, buffer, bufferOffset, null);
    // Serialize message field [qw]
    bufferOffset = _arraySerializer.float32(obj.qw, buffer, bufferOffset, null);
    // Serialize message field [motor_status]
    bufferOffset = MotorStatus.serialize(obj.motor_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MuscleState
    let len;
    let data = new MuscleState(null);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [x]
    data.x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [y]
    data.y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [z]
    data.z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [qx]
    data.qx = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [qy]
    data.qy = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [qz]
    data.qz = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [qw]
    data.qw = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [motor_status]
    data.motor_status = MotorStatus.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.x.length;
    length += 4 * object.y.length;
    length += 4 * object.z.length;
    length += 4 * object.qx.length;
    length += 4 * object.qy.length;
    length += 4 * object.qz.length;
    length += 4 * object.qw.length;
    length += MotorStatus.getMessageSize(object.motor_status);
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MuscleState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '83677b7ee8872b63110df62d234a3be9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # link names
    string[] name
    # relativ position on mesh
    float32[] x
    float32[] y
    float32[] z
    # relativ orientation on mesh
    float32[] qx
    float32[] qy
    float32[] qz
    float32[] qw
    # motor status
    MotorStatus motor_status
    ================================================================================
    MSG: roboy_communication_middleware/MotorStatus
    uint8 id
    bool power_sense
    int32[] pwmRef
    int32[] position
    int32[] velocity
    int16[] displacement
    int16[] current
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MuscleState(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = []
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = []
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = []
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = []
    }

    if (msg.qx !== undefined) {
      resolved.qx = msg.qx;
    }
    else {
      resolved.qx = []
    }

    if (msg.qy !== undefined) {
      resolved.qy = msg.qy;
    }
    else {
      resolved.qy = []
    }

    if (msg.qz !== undefined) {
      resolved.qz = msg.qz;
    }
    else {
      resolved.qz = []
    }

    if (msg.qw !== undefined) {
      resolved.qw = msg.qw;
    }
    else {
      resolved.qw = []
    }

    if (msg.motor_status !== undefined) {
      resolved.motor_status = MotorStatus.Resolve(msg.motor_status)
    }
    else {
      resolved.motor_status = new MotorStatus()
    }

    return resolved;
    }
};

module.exports = MuscleState;
