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

class Input {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.name = null;
      this.inputVoltage = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('inputVoltage')) {
        this.inputVoltage = initObj.inputVoltage
      }
      else {
        this.inputVoltage = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Input
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [inputVoltage]
    bufferOffset = _serializer.float32(obj.inputVoltage, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Input
    let len;
    let data = new Input(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [inputVoltage]
    data.inputVoltage = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/Input';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6b29d099f170fe0e13cb609fe43e947f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    string name
    float32 inputVoltage
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Input(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.inputVoltage !== undefined) {
      resolved.inputVoltage = msg.inputVoltage;
    }
    else {
      resolved.inputVoltage = 0.0
    }

    return resolved;
    }
};

module.exports = Input;
