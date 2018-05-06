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

class DarkRoomStatistics {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_name = null;
      this.lighthouse = null;
      this.updateFrequency_horizontal = null;
      this.updateFrequency_vertical = null;
    }
    else {
      if (initObj.hasOwnProperty('object_name')) {
        this.object_name = initObj.object_name
      }
      else {
        this.object_name = '';
      }
      if (initObj.hasOwnProperty('lighthouse')) {
        this.lighthouse = initObj.lighthouse
      }
      else {
        this.lighthouse = 0;
      }
      if (initObj.hasOwnProperty('updateFrequency_horizontal')) {
        this.updateFrequency_horizontal = initObj.updateFrequency_horizontal
      }
      else {
        this.updateFrequency_horizontal = [];
      }
      if (initObj.hasOwnProperty('updateFrequency_vertical')) {
        this.updateFrequency_vertical = initObj.updateFrequency_vertical
      }
      else {
        this.updateFrequency_vertical = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoomStatistics
    // Serialize message field [object_name]
    bufferOffset = _serializer.string(obj.object_name, buffer, bufferOffset);
    // Serialize message field [lighthouse]
    bufferOffset = _serializer.int32(obj.lighthouse, buffer, bufferOffset);
    // Serialize message field [updateFrequency_horizontal]
    bufferOffset = _arraySerializer.float32(obj.updateFrequency_horizontal, buffer, bufferOffset, null);
    // Serialize message field [updateFrequency_vertical]
    bufferOffset = _arraySerializer.float32(obj.updateFrequency_vertical, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoomStatistics
    let len;
    let data = new DarkRoomStatistics(null);
    // Deserialize message field [object_name]
    data.object_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lighthouse]
    data.lighthouse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [updateFrequency_horizontal]
    data.updateFrequency_horizontal = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [updateFrequency_vertical]
    data.updateFrequency_vertical = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_name.length;
    length += 4 * object.updateFrequency_horizontal.length;
    length += 4 * object.updateFrequency_vertical.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/DarkRoomStatistics';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7aa7daab9e7ff8fdfb2e001f35611191';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_name
    int32 lighthouse
    float32[] updateFrequency_horizontal
    float32[] updateFrequency_vertical
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoomStatistics(null);
    if (msg.object_name !== undefined) {
      resolved.object_name = msg.object_name;
    }
    else {
      resolved.object_name = ''
    }

    if (msg.lighthouse !== undefined) {
      resolved.lighthouse = msg.lighthouse;
    }
    else {
      resolved.lighthouse = 0
    }

    if (msg.updateFrequency_horizontal !== undefined) {
      resolved.updateFrequency_horizontal = msg.updateFrequency_horizontal;
    }
    else {
      resolved.updateFrequency_horizontal = []
    }

    if (msg.updateFrequency_vertical !== undefined) {
      resolved.updateFrequency_vertical = msg.updateFrequency_vertical;
    }
    else {
      resolved.updateFrequency_vertical = []
    }

    return resolved;
    }
};

module.exports = DarkRoomStatistics;
