// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.motors = null;
      this.control_mode = null;
      this.outputPosMax = null;
      this.outputNegMax = null;
      this.spPosMax = null;
      this.spNegMax = null;
      this.Kp = null;
      this.Ki = null;
      this.Kd = null;
      this.forwardGain = null;
      this.deadBand = null;
      this.IntegralPosMax = null;
      this.IntegralNegMax = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('motors')) {
        this.motors = initObj.motors
      }
      else {
        this.motors = [];
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = [];
      }
      if (initObj.hasOwnProperty('outputPosMax')) {
        this.outputPosMax = initObj.outputPosMax
      }
      else {
        this.outputPosMax = [];
      }
      if (initObj.hasOwnProperty('outputNegMax')) {
        this.outputNegMax = initObj.outputNegMax
      }
      else {
        this.outputNegMax = [];
      }
      if (initObj.hasOwnProperty('spPosMax')) {
        this.spPosMax = initObj.spPosMax
      }
      else {
        this.spPosMax = [];
      }
      if (initObj.hasOwnProperty('spNegMax')) {
        this.spNegMax = initObj.spNegMax
      }
      else {
        this.spNegMax = [];
      }
      if (initObj.hasOwnProperty('Kp')) {
        this.Kp = initObj.Kp
      }
      else {
        this.Kp = [];
      }
      if (initObj.hasOwnProperty('Ki')) {
        this.Ki = initObj.Ki
      }
      else {
        this.Ki = [];
      }
      if (initObj.hasOwnProperty('Kd')) {
        this.Kd = initObj.Kd
      }
      else {
        this.Kd = [];
      }
      if (initObj.hasOwnProperty('forwardGain')) {
        this.forwardGain = initObj.forwardGain
      }
      else {
        this.forwardGain = [];
      }
      if (initObj.hasOwnProperty('deadBand')) {
        this.deadBand = initObj.deadBand
      }
      else {
        this.deadBand = [];
      }
      if (initObj.hasOwnProperty('IntegralPosMax')) {
        this.IntegralPosMax = initObj.IntegralPosMax
      }
      else {
        this.IntegralPosMax = [];
      }
      if (initObj.hasOwnProperty('IntegralNegMax')) {
        this.IntegralNegMax = initObj.IntegralNegMax
      }
      else {
        this.IntegralNegMax = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfig
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [motors]
    bufferOffset = _arraySerializer.uint8(obj.motors, buffer, bufferOffset, null);
    // Serialize message field [control_mode]
    bufferOffset = _arraySerializer.uint8(obj.control_mode, buffer, bufferOffset, null);
    // Serialize message field [outputPosMax]
    bufferOffset = _arraySerializer.int32(obj.outputPosMax, buffer, bufferOffset, null);
    // Serialize message field [outputNegMax]
    bufferOffset = _arraySerializer.int32(obj.outputNegMax, buffer, bufferOffset, null);
    // Serialize message field [spPosMax]
    bufferOffset = _arraySerializer.int32(obj.spPosMax, buffer, bufferOffset, null);
    // Serialize message field [spNegMax]
    bufferOffset = _arraySerializer.int32(obj.spNegMax, buffer, bufferOffset, null);
    // Serialize message field [Kp]
    bufferOffset = _arraySerializer.uint16(obj.Kp, buffer, bufferOffset, null);
    // Serialize message field [Ki]
    bufferOffset = _arraySerializer.uint16(obj.Ki, buffer, bufferOffset, null);
    // Serialize message field [Kd]
    bufferOffset = _arraySerializer.uint16(obj.Kd, buffer, bufferOffset, null);
    // Serialize message field [forwardGain]
    bufferOffset = _arraySerializer.uint16(obj.forwardGain, buffer, bufferOffset, null);
    // Serialize message field [deadBand]
    bufferOffset = _arraySerializer.uint16(obj.deadBand, buffer, bufferOffset, null);
    // Serialize message field [IntegralPosMax]
    bufferOffset = _arraySerializer.int32(obj.IntegralPosMax, buffer, bufferOffset, null);
    // Serialize message field [IntegralNegMax]
    bufferOffset = _arraySerializer.int32(obj.IntegralNegMax, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfig
    let len;
    let data = new MotorConfig(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motors]
    data.motors = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_mode]
    data.control_mode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [outputPosMax]
    data.outputPosMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [outputNegMax]
    data.outputNegMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [spPosMax]
    data.spPosMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [spNegMax]
    data.spNegMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [Kp]
    data.Kp = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [Ki]
    data.Ki = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [Kd]
    data.Kd = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [forwardGain]
    data.forwardGain = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [deadBand]
    data.deadBand = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [IntegralPosMax]
    data.IntegralPosMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [IntegralNegMax]
    data.IntegralNegMax = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.motors.length;
    length += object.control_mode.length;
    length += 4 * object.outputPosMax.length;
    length += 4 * object.outputNegMax.length;
    length += 4 * object.spPosMax.length;
    length += 4 * object.spNegMax.length;
    length += 2 * object.Kp.length;
    length += 2 * object.Ki.length;
    length += 2 * object.Kd.length;
    length += 2 * object.forwardGain.length;
    length += 2 * object.deadBand.length;
    length += 4 * object.IntegralPosMax.length;
    length += 4 * object.IntegralNegMax.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MotorConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '550fcb9e4abb4b0f030e3417615fc81e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    uint8[] motors
    uint8[] control_mode
    int32[] outputPosMax
    int32[] outputNegMax
    int32[] spPosMax
    int32[] spNegMax
    uint16[] Kp
    uint16[] Ki
    uint16[] Kd
    uint16[] forwardGain
    uint16[] deadBand
    int32[] IntegralPosMax
    int32[] IntegralNegMax
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorConfig(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.motors !== undefined) {
      resolved.motors = msg.motors;
    }
    else {
      resolved.motors = []
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = []
    }

    if (msg.outputPosMax !== undefined) {
      resolved.outputPosMax = msg.outputPosMax;
    }
    else {
      resolved.outputPosMax = []
    }

    if (msg.outputNegMax !== undefined) {
      resolved.outputNegMax = msg.outputNegMax;
    }
    else {
      resolved.outputNegMax = []
    }

    if (msg.spPosMax !== undefined) {
      resolved.spPosMax = msg.spPosMax;
    }
    else {
      resolved.spPosMax = []
    }

    if (msg.spNegMax !== undefined) {
      resolved.spNegMax = msg.spNegMax;
    }
    else {
      resolved.spNegMax = []
    }

    if (msg.Kp !== undefined) {
      resolved.Kp = msg.Kp;
    }
    else {
      resolved.Kp = []
    }

    if (msg.Ki !== undefined) {
      resolved.Ki = msg.Ki;
    }
    else {
      resolved.Ki = []
    }

    if (msg.Kd !== undefined) {
      resolved.Kd = msg.Kd;
    }
    else {
      resolved.Kd = []
    }

    if (msg.forwardGain !== undefined) {
      resolved.forwardGain = msg.forwardGain;
    }
    else {
      resolved.forwardGain = []
    }

    if (msg.deadBand !== undefined) {
      resolved.deadBand = msg.deadBand;
    }
    else {
      resolved.deadBand = []
    }

    if (msg.IntegralPosMax !== undefined) {
      resolved.IntegralPosMax = msg.IntegralPosMax;
    }
    else {
      resolved.IntegralPosMax = []
    }

    if (msg.IntegralNegMax !== undefined) {
      resolved.IntegralNegMax = msg.IntegralNegMax;
    }
    else {
      resolved.IntegralNegMax = []
    }

    return resolved;
    }
};

module.exports = MotorConfig;
