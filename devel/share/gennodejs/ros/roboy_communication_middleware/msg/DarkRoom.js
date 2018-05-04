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

class DarkRoom {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objectID = null;
      this.timestamp = null;
      this.sensor_value = null;
    }
    else {
      if (initObj.hasOwnProperty('objectID')) {
        this.objectID = initObj.objectID
      }
      else {
        this.objectID = '';
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = [];
      }
      if (initObj.hasOwnProperty('sensor_value')) {
        this.sensor_value = initObj.sensor_value
      }
      else {
        this.sensor_value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoom
    // Serialize message field [objectID]
    bufferOffset = _serializer.string(obj.objectID, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _arraySerializer.int32(obj.timestamp, buffer, bufferOffset, null);
    // Serialize message field [sensor_value]
    bufferOffset = _arraySerializer.uint32(obj.sensor_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoom
    let len;
    let data = new DarkRoom(null);
    // Deserialize message field [objectID]
    data.objectID = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [sensor_value]
    data.sensor_value = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.objectID.length;
    length += 4 * object.timestamp.length;
    length += 4 * object.sensor_value.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/DarkRoom';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aed743726215b7331fbd6743cff531dc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string objectID
    int32[] timestamp
    uint32[] sensor_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoom(null);
    if (msg.objectID !== undefined) {
      resolved.objectID = msg.objectID;
    }
    else {
      resolved.objectID = ''
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = []
    }

    if (msg.sensor_value !== undefined) {
      resolved.sensor_value = msg.sensor_value;
    }
    else {
      resolved.sensor_value = []
    }

    return resolved;
    }
};

module.exports = DarkRoom;
