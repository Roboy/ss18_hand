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

class AudioInfo {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.frequency = null;
      this.averagePower = null;
    }
    else {
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = [];
      }
      if (initObj.hasOwnProperty('averagePower')) {
        this.averagePower = initObj.averagePower
      }
      else {
        this.averagePower = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AudioInfo
    // Serialize message field [frequency]
    bufferOffset = _arraySerializer.float32(obj.frequency, buffer, bufferOffset, null);
    // Serialize message field [averagePower]
    bufferOffset = _arraySerializer.float32(obj.averagePower, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AudioInfo
    let len;
    let data = new AudioInfo(null);
    // Deserialize message field [frequency]
    data.frequency = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [averagePower]
    data.averagePower = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.frequency.length;
    length += 4 * object.averagePower.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_cognition/AudioInfo';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72fb2e65555f8e71fd34fc560cf30d5f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] frequency
    float32[] averagePower
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AudioInfo(null);
    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = []
    }

    if (msg.averagePower !== undefined) {
      resolved.averagePower = msg.averagePower;
    }
    else {
      resolved.averagePower = []
    }

    return resolved;
    }
};

module.exports = AudioInfo;
