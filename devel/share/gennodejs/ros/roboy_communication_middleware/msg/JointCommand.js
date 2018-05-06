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

class JointCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.link_name = null;
      this.angle = null;
    }
    else {
      if (initObj.hasOwnProperty('link_name')) {
        this.link_name = initObj.link_name
      }
      else {
        this.link_name = [];
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointCommand
    // Serialize message field [link_name]
    bufferOffset = _arraySerializer.string(obj.link_name, buffer, bufferOffset, null);
    // Serialize message field [angle]
    bufferOffset = _arraySerializer.float32(obj.angle, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointCommand
    let len;
    let data = new JointCommand(null);
    // Deserialize message field [link_name]
    data.link_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [angle]
    data.angle = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.link_name.forEach((val) => {
      length += 4 + val.length;
    });
    length += 4 * object.angle.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/JointCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b1291289f62fecbebd3e6705db37ed4e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] link_name
    float32[] angle
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointCommand(null);
    if (msg.link_name !== undefined) {
      resolved.link_name = msg.link_name;
    }
    else {
      resolved.link_name = []
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = []
    }

    return resolved;
    }
};

module.exports = JointCommand;
