// Auto-generated. Do not edit!

// (in-package roboy_communication_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ExternalForce {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
      this.x = null;
      this.y = null;
      this.z = null;
      this.f_x = null;
      this.f_y = null;
      this.f_z = null;
      this.duration = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('x')) {
        this.x = initObj.x
      }
      else {
        this.x = 0.0;
      }
      if (initObj.hasOwnProperty('y')) {
        this.y = initObj.y
      }
      else {
        this.y = 0.0;
      }
      if (initObj.hasOwnProperty('z')) {
        this.z = initObj.z
      }
      else {
        this.z = 0.0;
      }
      if (initObj.hasOwnProperty('f_x')) {
        this.f_x = initObj.f_x
      }
      else {
        this.f_x = 0.0;
      }
      if (initObj.hasOwnProperty('f_y')) {
        this.f_y = initObj.f_y
      }
      else {
        this.f_y = 0.0;
      }
      if (initObj.hasOwnProperty('f_z')) {
        this.f_z = initObj.f_z
      }
      else {
        this.f_z = 0.0;
      }
      if (initObj.hasOwnProperty('duration')) {
        this.duration = initObj.duration
      }
      else {
        this.duration = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExternalForce
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [x]
    bufferOffset = _serializer.float32(obj.x, buffer, bufferOffset);
    // Serialize message field [y]
    bufferOffset = _serializer.float32(obj.y, buffer, bufferOffset);
    // Serialize message field [z]
    bufferOffset = _serializer.float32(obj.z, buffer, bufferOffset);
    // Serialize message field [f_x]
    bufferOffset = _serializer.float32(obj.f_x, buffer, bufferOffset);
    // Serialize message field [f_y]
    bufferOffset = _serializer.float32(obj.f_y, buffer, bufferOffset);
    // Serialize message field [f_z]
    bufferOffset = _serializer.float32(obj.f_z, buffer, bufferOffset);
    // Serialize message field [duration]
    bufferOffset = _serializer.int32(obj.duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExternalForce
    let len;
    let data = new ExternalForce(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [x]
    data.x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y]
    data.y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [z]
    data.z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [f_x]
    data.f_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [f_y]
    data.f_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [f_z]
    data.f_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [duration]
    data.duration = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/ExternalForce';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6e3497e9ca5650a8a3d8803fe7153120';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # link name
    string name
    # relativ position on mesh
    float32 x
    float32 y
    float32 z
    # force
    float32 f_x
    float32 f_y
    float32 f_z
    # force duration in milliseconds
    int32 duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExternalForce(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.x !== undefined) {
      resolved.x = msg.x;
    }
    else {
      resolved.x = 0.0
    }

    if (msg.y !== undefined) {
      resolved.y = msg.y;
    }
    else {
      resolved.y = 0.0
    }

    if (msg.z !== undefined) {
      resolved.z = msg.z;
    }
    else {
      resolved.z = 0.0
    }

    if (msg.f_x !== undefined) {
      resolved.f_x = msg.f_x;
    }
    else {
      resolved.f_x = 0.0
    }

    if (msg.f_y !== undefined) {
      resolved.f_y = msg.f_y;
    }
    else {
      resolved.f_y = 0.0
    }

    if (msg.f_z !== undefined) {
      resolved.f_z = msg.f_z;
    }
    else {
      resolved.f_z = 0.0
    }

    if (msg.duration !== undefined) {
      resolved.duration = msg.duration;
    }
    else {
      resolved.duration = 0
    }

    return resolved;
    }
};

module.exports = ExternalForce;
