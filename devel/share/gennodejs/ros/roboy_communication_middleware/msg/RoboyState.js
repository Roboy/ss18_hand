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

class RoboyState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.setPoint = null;
      this.actuatorPos = null;
      this.actuatorVel = null;
      this.tendonDisplacement = null;
      this.actuatorCurrent = null;
    }
    else {
      if (initObj.hasOwnProperty('setPoint')) {
        this.setPoint = initObj.setPoint
      }
      else {
        this.setPoint = [];
      }
      if (initObj.hasOwnProperty('actuatorPos')) {
        this.actuatorPos = initObj.actuatorPos
      }
      else {
        this.actuatorPos = [];
      }
      if (initObj.hasOwnProperty('actuatorVel')) {
        this.actuatorVel = initObj.actuatorVel
      }
      else {
        this.actuatorVel = [];
      }
      if (initObj.hasOwnProperty('tendonDisplacement')) {
        this.tendonDisplacement = initObj.tendonDisplacement
      }
      else {
        this.tendonDisplacement = [];
      }
      if (initObj.hasOwnProperty('actuatorCurrent')) {
        this.actuatorCurrent = initObj.actuatorCurrent
      }
      else {
        this.actuatorCurrent = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RoboyState
    // Serialize message field [setPoint]
    bufferOffset = _arraySerializer.float32(obj.setPoint, buffer, bufferOffset, null);
    // Serialize message field [actuatorPos]
    bufferOffset = _arraySerializer.float32(obj.actuatorPos, buffer, bufferOffset, null);
    // Serialize message field [actuatorVel]
    bufferOffset = _arraySerializer.float32(obj.actuatorVel, buffer, bufferOffset, null);
    // Serialize message field [tendonDisplacement]
    bufferOffset = _arraySerializer.float32(obj.tendonDisplacement, buffer, bufferOffset, null);
    // Serialize message field [actuatorCurrent]
    bufferOffset = _arraySerializer.float32(obj.actuatorCurrent, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RoboyState
    let len;
    let data = new RoboyState(null);
    // Deserialize message field [setPoint]
    data.setPoint = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actuatorPos]
    data.actuatorPos = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actuatorVel]
    data.actuatorVel = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [tendonDisplacement]
    data.tendonDisplacement = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [actuatorCurrent]
    data.actuatorCurrent = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.setPoint.length;
    length += 4 * object.actuatorPos.length;
    length += 4 * object.actuatorVel.length;
    length += 4 * object.tendonDisplacement.length;
    length += 4 * object.actuatorCurrent.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/RoboyState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a564b9aee3211a3963e685c6ed14e5e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] setPoint
    float32[] actuatorPos
    float32[] actuatorVel
    float32[] tendonDisplacement
    float32[] actuatorCurrent
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RoboyState(null);
    if (msg.setPoint !== undefined) {
      resolved.setPoint = msg.setPoint;
    }
    else {
      resolved.setPoint = []
    }

    if (msg.actuatorPos !== undefined) {
      resolved.actuatorPos = msg.actuatorPos;
    }
    else {
      resolved.actuatorPos = []
    }

    if (msg.actuatorVel !== undefined) {
      resolved.actuatorVel = msg.actuatorVel;
    }
    else {
      resolved.actuatorVel = []
    }

    if (msg.tendonDisplacement !== undefined) {
      resolved.tendonDisplacement = msg.tendonDisplacement;
    }
    else {
      resolved.tendonDisplacement = []
    }

    if (msg.actuatorCurrent !== undefined) {
      resolved.actuatorCurrent = msg.actuatorCurrent;
    }
    else {
      resolved.actuatorCurrent = []
    }

    return resolved;
    }
};

module.exports = RoboyState;
