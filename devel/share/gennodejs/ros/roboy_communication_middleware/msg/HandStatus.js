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

class HandStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.current = null;
      this.gyro_x = null;
      this.gyro_y = null;
      this.gyro_z = null;
      this.acc_x = null;
      this.acc_y = null;
      this.acc_z = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = [];
      }
      if (initObj.hasOwnProperty('gyro_x')) {
        this.gyro_x = initObj.gyro_x
      }
      else {
        this.gyro_x = [];
      }
      if (initObj.hasOwnProperty('gyro_y')) {
        this.gyro_y = initObj.gyro_y
      }
      else {
        this.gyro_y = [];
      }
      if (initObj.hasOwnProperty('gyro_z')) {
        this.gyro_z = initObj.gyro_z
      }
      else {
        this.gyro_z = [];
      }
      if (initObj.hasOwnProperty('acc_x')) {
        this.acc_x = initObj.acc_x
      }
      else {
        this.acc_x = [];
      }
      if (initObj.hasOwnProperty('acc_y')) {
        this.acc_y = initObj.acc_y
      }
      else {
        this.acc_y = [];
      }
      if (initObj.hasOwnProperty('acc_z')) {
        this.acc_z = initObj.acc_z
      }
      else {
        this.acc_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HandStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [current]
    bufferOffset = _arraySerializer.uint16(obj.current, buffer, bufferOffset, null);
    // Serialize message field [gyro_x]
    bufferOffset = _arraySerializer.float32(obj.gyro_x, buffer, bufferOffset, null);
    // Serialize message field [gyro_y]
    bufferOffset = _arraySerializer.float32(obj.gyro_y, buffer, bufferOffset, null);
    // Serialize message field [gyro_z]
    bufferOffset = _arraySerializer.float32(obj.gyro_z, buffer, bufferOffset, null);
    // Serialize message field [acc_x]
    bufferOffset = _arraySerializer.float32(obj.acc_x, buffer, bufferOffset, null);
    // Serialize message field [acc_y]
    bufferOffset = _arraySerializer.float32(obj.acc_y, buffer, bufferOffset, null);
    // Serialize message field [acc_z]
    bufferOffset = _arraySerializer.float32(obj.acc_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HandStatus
    let len;
    let data = new HandStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [current]
    data.current = _arrayDeserializer.uint16(buffer, bufferOffset, null)
    // Deserialize message field [gyro_x]
    data.gyro_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [gyro_y]
    data.gyro_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [gyro_z]
    data.gyro_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acc_x]
    data.acc_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acc_y]
    data.acc_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [acc_z]
    data.acc_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 2 * object.current.length;
    length += 4 * object.gyro_x.length;
    length += 4 * object.gyro_y.length;
    length += 4 * object.gyro_z.length;
    length += 4 * object.acc_x.length;
    length += 4 * object.acc_y.length;
    length += 4 * object.acc_z.length;
    return length + 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/HandStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '97b9b0de055e4b42598ca636d82f484d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    # six current measurements per arm board
    uint16[] current
    float32[] gyro_x
    float32[] gyro_y
    float32[] gyro_z
    float32[] acc_x
    float32[] acc_y
    float32[] acc_z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HandStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = []
    }

    if (msg.gyro_x !== undefined) {
      resolved.gyro_x = msg.gyro_x;
    }
    else {
      resolved.gyro_x = []
    }

    if (msg.gyro_y !== undefined) {
      resolved.gyro_y = msg.gyro_y;
    }
    else {
      resolved.gyro_y = []
    }

    if (msg.gyro_z !== undefined) {
      resolved.gyro_z = msg.gyro_z;
    }
    else {
      resolved.gyro_z = []
    }

    if (msg.acc_x !== undefined) {
      resolved.acc_x = msg.acc_x;
    }
    else {
      resolved.acc_x = []
    }

    if (msg.acc_y !== undefined) {
      resolved.acc_y = msg.acc_y;
    }
    else {
      resolved.acc_y = []
    }

    if (msg.acc_z !== undefined) {
      resolved.acc_z = msg.acc_z;
    }
    else {
      resolved.acc_z = []
    }

    return resolved;
    }
};

module.exports = HandStatus;
