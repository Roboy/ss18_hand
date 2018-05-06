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

class VisualizationControl {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.control = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('control')) {
        this.control = initObj.control
      }
      else {
        this.control = 0;
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisualizationControl
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [control]
    bufferOffset = _serializer.int32(obj.control, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.bool(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualizationControl
    let len;
    let data = new VisualizationControl(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control]
    data.control = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/VisualizationControl';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cf7737e0cffb7fec83f0192491e2fe23';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    int32 control
    bool value
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualizationControl(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.control !== undefined) {
      resolved.control = msg.control;
    }
    else {
      resolved.control = 0
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = false
    }

    return resolved;
    }
};

module.exports = VisualizationControl;
