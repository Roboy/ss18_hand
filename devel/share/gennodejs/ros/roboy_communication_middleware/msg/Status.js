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

class Status {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.statusCode = null;
      this.steered = null;
    }
    else {
      if (initObj.hasOwnProperty('statusCode')) {
        this.statusCode = initObj.statusCode
      }
      else {
        this.statusCode = 0;
      }
      if (initObj.hasOwnProperty('steered')) {
        this.steered = initObj.steered
      }
      else {
        this.steered = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Status
    // Serialize message field [statusCode]
    bufferOffset = _serializer.uint8(obj.statusCode, buffer, bufferOffset);
    // Serialize message field [steered]
    bufferOffset = _serializer.uint8(obj.steered, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Status
    let len;
    let data = new Status(null);
    // Deserialize message field [statusCode]
    data.statusCode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [steered]
    data.steered = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/Status';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7aa054f567dcdaf03fdb7adb993112db';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 statusCode
    uint8 steered
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Status(null);
    if (msg.statusCode !== undefined) {
      resolved.statusCode = msg.statusCode;
    }
    else {
      resolved.statusCode = 0
    }

    if (msg.steered !== undefined) {
      resolved.steered = msg.steered;
    }
    else {
      resolved.steered = 0
    }

    return resolved;
    }
};

module.exports = Status;
