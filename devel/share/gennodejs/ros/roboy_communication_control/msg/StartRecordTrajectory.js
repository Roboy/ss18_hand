// Auto-generated. Do not edit!

// (in-package roboy_communication_control.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class StartRecordTrajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.body_parts = null;
      this.idList = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('body_parts')) {
        this.body_parts = initObj.body_parts
      }
      else {
        this.body_parts = [];
      }
      if (initObj.hasOwnProperty('idList')) {
        this.idList = initObj.idList
      }
      else {
        this.idList = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StartRecordTrajectory
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [body_parts]
    bufferOffset = _arraySerializer.string(obj.body_parts, buffer, bufferOffset, null);
    // Serialize message field [idList]
    bufferOffset = _arraySerializer.int8(obj.idList, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StartRecordTrajectory
    let len;
    let data = new StartRecordTrajectory(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [body_parts]
    data.body_parts = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [idList]
    data.idList = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    object.body_parts.forEach((val) => {
      length += 4 + val.length;
    });
    length += object.idList.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_control/StartRecordTrajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5f0aad87f11bc7604cf05b6b9f3696e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    string[] body_parts # to record
    int8[] idList
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StartRecordTrajectory(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.body_parts !== undefined) {
      resolved.body_parts = msg.body_parts;
    }
    else {
      resolved.body_parts = []
    }

    if (msg.idList !== undefined) {
      resolved.idList = msg.idList;
    }
    else {
      resolved.idList = []
    }

    return resolved;
    }
};

module.exports = StartRecordTrajectory;
