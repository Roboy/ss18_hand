// Auto-generated. Do not edit!

// (in-package roboy_communication_cognition.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DirectionVector {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.azimutal_angle = null;
      this.polar_angle = null;
    }
    else {
      if (initObj.hasOwnProperty('azimutal_angle')) {
        this.azimutal_angle = initObj.azimutal_angle
      }
      else {
        this.azimutal_angle = 0.0;
      }
      if (initObj.hasOwnProperty('polar_angle')) {
        this.polar_angle = initObj.polar_angle
      }
      else {
        this.polar_angle = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DirectionVector
    // Serialize message field [azimutal_angle]
    bufferOffset = _serializer.float64(obj.azimutal_angle, buffer, bufferOffset);
    // Serialize message field [polar_angle]
    bufferOffset = _serializer.float64(obj.polar_angle, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DirectionVector
    let len;
    let data = new DirectionVector(null);
    // Deserialize message field [azimutal_angle]
    data.azimutal_angle = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [polar_angle]
    data.polar_angle = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_cognition/DirectionVector';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '32f7ac1c3ed95e6c1aa8e7777879079b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 azimutal_angle
    float64 polar_angle
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DirectionVector(null);
    if (msg.azimutal_angle !== undefined) {
      resolved.azimutal_angle = msg.azimutal_angle;
    }
    else {
      resolved.azimutal_angle = 0.0
    }

    if (msg.polar_angle !== undefined) {
      resolved.polar_angle = msg.polar_angle;
    }
    else {
      resolved.polar_angle = 0.0
    }

    return resolved;
    }
};

module.exports = DirectionVector;
