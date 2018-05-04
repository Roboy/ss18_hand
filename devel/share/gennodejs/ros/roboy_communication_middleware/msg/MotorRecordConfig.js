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

class MotorRecordConfig {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ids = null;
      this.control_mode = null;
      this.samplingTime = null;
      this.recordTime = null;
    }
    else {
      if (initObj.hasOwnProperty('ids')) {
        this.ids = initObj.ids
      }
      else {
        this.ids = [];
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('samplingTime')) {
        this.samplingTime = initObj.samplingTime
      }
      else {
        this.samplingTime = 0;
      }
      if (initObj.hasOwnProperty('recordTime')) {
        this.recordTime = initObj.recordTime
      }
      else {
        this.recordTime = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorRecordConfig
    // Serialize message field [ids]
    bufferOffset = _arraySerializer.uint8(obj.ids, buffer, bufferOffset, null);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [samplingTime]
    bufferOffset = _serializer.int32(obj.samplingTime, buffer, bufferOffset);
    // Serialize message field [recordTime]
    bufferOffset = _serializer.int32(obj.recordTime, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorRecordConfig
    let len;
    let data = new MotorRecordConfig(null);
    // Deserialize message field [ids]
    data.ids = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [samplingTime]
    data.samplingTime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [recordTime]
    data.recordTime = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.ids.length;
    return length + 13;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MotorRecordConfig';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4bdc623fa132fbb9601cc1d66046343b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8[] ids
    uint8 control_mode
    int32 samplingTime
    int32 recordTime
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorRecordConfig(null);
    if (msg.ids !== undefined) {
      resolved.ids = msg.ids;
    }
    else {
      resolved.ids = []
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.samplingTime !== undefined) {
      resolved.samplingTime = msg.samplingTime;
    }
    else {
      resolved.samplingTime = 0
    }

    if (msg.recordTime !== undefined) {
      resolved.recordTime = msg.recordTime;
    }
    else {
      resolved.recordTime = 0
    }

    return resolved;
    }
};

module.exports = MotorRecordConfig;
