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

class MotorTrajectoryControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.play = null;
      this.rewind = null;
      this.pause = null;
      this.loop = null;
    }
    else {
      if (initObj.hasOwnProperty('play')) {
        this.play = initObj.play
      }
      else {
        this.play = false;
      }
      if (initObj.hasOwnProperty('rewind')) {
        this.rewind = initObj.rewind
      }
      else {
        this.rewind = false;
      }
      if (initObj.hasOwnProperty('pause')) {
        this.pause = initObj.pause
      }
      else {
        this.pause = false;
      }
      if (initObj.hasOwnProperty('loop')) {
        this.loop = initObj.loop
      }
      else {
        this.loop = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorTrajectoryControl
    // Serialize message field [play]
    bufferOffset = _serializer.bool(obj.play, buffer, bufferOffset);
    // Serialize message field [rewind]
    bufferOffset = _serializer.bool(obj.rewind, buffer, bufferOffset);
    // Serialize message field [pause]
    bufferOffset = _serializer.bool(obj.pause, buffer, bufferOffset);
    // Serialize message field [loop]
    bufferOffset = _serializer.bool(obj.loop, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorTrajectoryControl
    let len;
    let data = new MotorTrajectoryControl(null);
    // Deserialize message field [play]
    data.play = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rewind]
    data.rewind = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pause]
    data.pause = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loop]
    data.loop = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MotorTrajectoryControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7791d2c1e7fac692a462f6500b596124';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool play
    bool rewind
    bool pause
    bool loop
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorTrajectoryControl(null);
    if (msg.play !== undefined) {
      resolved.play = msg.play;
    }
    else {
      resolved.play = false
    }

    if (msg.rewind !== undefined) {
      resolved.rewind = msg.rewind;
    }
    else {
      resolved.rewind = false
    }

    if (msg.pause !== undefined) {
      resolved.pause = msg.pause;
    }
    else {
      resolved.pause = false
    }

    if (msg.loop !== undefined) {
      resolved.loop = msg.loop;
    }
    else {
      resolved.loop = false
    }

    return resolved;
    }
};

module.exports = MotorTrajectoryControl;
