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

class Trajectory {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.samplerate = null;
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('samplerate')) {
        this.samplerate = initObj.samplerate
      }
      else {
        this.samplerate = 0.0;
      }
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Trajectory
    // Serialize message field [id]
    bufferOffset = _serializer.uint32(obj.id, buffer, bufferOffset);
    // Serialize message field [samplerate]
    bufferOffset = _serializer.float32(obj.samplerate, buffer, bufferOffset);
    // Serialize message field [waypoints]
    bufferOffset = _arraySerializer.float32(obj.waypoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Trajectory
    let len;
    let data = new Trajectory(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [samplerate]
    data.samplerate = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [waypoints]
    data.waypoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.waypoints.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/Trajectory';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd11e4c0723b2663c8ea9d08f7b04f5a6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint32 id
    float32 samplerate
    float32[] waypoints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Trajectory(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.samplerate !== undefined) {
      resolved.samplerate = msg.samplerate;
    }
    else {
      resolved.samplerate = 0.0
    }

    if (msg.waypoints !== undefined) {
      resolved.waypoints = msg.waypoints;
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = Trajectory;
