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

class MotorStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.power_sense = null;
      this.pwmRef = null;
      this.position = null;
      this.velocity = null;
      this.displacement = null;
      this.current = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('power_sense')) {
        this.power_sense = initObj.power_sense
      }
      else {
        this.power_sense = false;
      }
      if (initObj.hasOwnProperty('pwmRef')) {
        this.pwmRef = initObj.pwmRef
      }
      else {
        this.pwmRef = [];
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('displacement')) {
        this.displacement = initObj.displacement
      }
      else {
        this.displacement = [];
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [power_sense]
    bufferOffset = _serializer.bool(obj.power_sense, buffer, bufferOffset);
    // Serialize message field [pwmRef]
    bufferOffset = _arraySerializer.int32(obj.pwmRef, buffer, bufferOffset, null);
    // Serialize message field [position]
    bufferOffset = _arraySerializer.int32(obj.position, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.int32(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [displacement]
    bufferOffset = _arraySerializer.int16(obj.displacement, buffer, bufferOffset, null);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.int16(obj.current, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorStatus
    let len;
    let data = new MotorStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [power_sense]
    data.power_sense = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [pwmRef]
    data.pwmRef = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [displacement]
    data.displacement = _arrayDeserializer.int16(buffer, bufferOffset, null)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pwmRef.length;
    length += 4 * object.position.length;
    length += 4 * object.velocity.length;
    length += 2 * object.displacement.length;
    length += 2 * object.current.length;
    return length + 22;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MotorStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4e5b00870e969487f6812b8d22dfec93';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    bool power_sense
    int32[] pwmRef
    int32[] position
    int32[] velocity
    int16[] displacement
    int16[] current
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.power_sense !== undefined) {
      resolved.power_sense = msg.power_sense;
    }
    else {
      resolved.power_sense = false
    }

    if (msg.pwmRef !== undefined) {
      resolved.pwmRef = msg.pwmRef;
    }
    else {
      resolved.pwmRef = []
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.displacement !== undefined) {
      resolved.displacement = msg.displacement;
    }
    else {
      resolved.displacement = []
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    return resolved;
    }
};

module.exports = MotorStatus;
