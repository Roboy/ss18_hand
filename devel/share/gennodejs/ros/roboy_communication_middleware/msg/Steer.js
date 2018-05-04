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

class Steer {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.steeringCommand = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('steeringCommand')) {
        this.steeringCommand = initObj.steeringCommand
      }
      else {
        this.steeringCommand = 0;
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Steer
    // Serialize message field [steeringCommand]
    bufferOffset = _serializer.int8(obj.steeringCommand, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Steer
    let len;
    let data = new Steer(null);
    // Deserialize message field [steeringCommand]
    data.steeringCommand = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/Steer';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e06389e481154910390e1eb5098a478e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # this is the command (START, STOP, REWIND, PAUSE)
    int8 steeringCommand
    # which behaviour id. you might have sent multiple trajectories to the controllers for preprocessing,
    # here you can choose which one should be used)
    int32 id
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Steer(null);
    if (msg.steeringCommand !== undefined) {
      resolved.steeringCommand = msg.steeringCommand;
    }
    else {
      resolved.steeringCommand = 0
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

module.exports = Steer;
