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

class HandCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.setPoint = null;
      this.motorid = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('setPoint')) {
        this.setPoint = initObj.setPoint
      }
      else {
        this.setPoint = [];
      }
      if (initObj.hasOwnProperty('motorid')) {
        this.motorid = initObj.motorid
      }
      else {
        this.motorid = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandCommand
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [setPoint]
    bufferOffset = _arraySerializer.uint8(obj.setPoint, buffer, bufferOffset, null);
    // Serialize message field [motorid]
    bufferOffset = _arraySerializer.uint8(obj.motorid, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandCommand
    let len;
    let data = new HandCommand(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [setPoint]
    data.setPoint = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [motorid]
    data.motorid = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.setPoint.length;
    length += object.motorid.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/HandCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33ffaf8168256fe4b3d8ba74b9a0642d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    uint8[] setPoint
    uint8[] motorid
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandCommand(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.setPoint !== undefined) {
      resolved.setPoint = msg.setPoint;
    }
    else {
      resolved.setPoint = []
    }

    if (msg.motorid !== undefined) {
      resolved.motorid = msg.motorid;
    }
    else {
      resolved.motorid = []
    }

    return resolved;
    }
};

module.exports = HandCommand;
