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

class DebugNotification {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.code = null;
      this.object = null;
      this.msg = null;
      this.extra = null;
      this.validityDuration = null;
    }
    else {
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = 0;
      }
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = '';
      }
      if (initObj.hasOwnProperty('msg')) {
        this.msg = initObj.msg
      }
      else {
        this.msg = '';
      }
      if (initObj.hasOwnProperty('extra')) {
        this.extra = initObj.extra
      }
      else {
        this.extra = '';
      }
      if (initObj.hasOwnProperty('validityDuration')) {
        this.validityDuration = initObj.validityDuration
      }
      else {
        this.validityDuration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DebugNotification
    // Serialize message field [code]
    bufferOffset = _serializer.int32(obj.code, buffer, bufferOffset);
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    // Serialize message field [msg]
    bufferOffset = _serializer.string(obj.msg, buffer, bufferOffset);
    // Serialize message field [extra]
    bufferOffset = _serializer.string(obj.extra, buffer, bufferOffset);
    // Serialize message field [validityDuration]
    bufferOffset = _serializer.int32(obj.validityDuration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DebugNotification
    let len;
    let data = new DebugNotification(null);
    // Deserialize message field [code]
    data.code = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [msg]
    data.msg = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [extra]
    data.extra = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [validityDuration]
    data.validityDuration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object.length;
    length += object.msg.length;
    length += object.extra.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_control/DebugNotification';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e83a19f2165c907848c09efd00ad9d5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 code
    string object
    string msg
    string extra
    int32 validityDuration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DebugNotification(null);
    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = 0
    }

    if (msg.object !== undefined) {
      resolved.object = msg.object;
    }
    else {
      resolved.object = ''
    }

    if (msg.msg !== undefined) {
      resolved.msg = msg.msg;
    }
    else {
      resolved.msg = ''
    }

    if (msg.extra !== undefined) {
      resolved.extra = msg.extra;
    }
    else {
      resolved.extra = ''
    }

    if (msg.validityDuration !== undefined) {
      resolved.validityDuration = msg.validityDuration;
    }
    else {
      resolved.validityDuration = 0
    }

    return resolved;
    }
};

module.exports = DebugNotification;
