// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let ControllerState = require('../msg/ControllerState.js');

//-----------------------------------------------------------

class EmergencyStopRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.all = null;
      this.idList = null;
    }
    else {
      if (initObj.hasOwnProperty('all')) {
        this.all = initObj.all
      }
      else {
        this.all = false;
      }
      if (initObj.hasOwnProperty('idList')) {
        this.idList = initObj.idList
      }
      else {
        this.idList = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmergencyStopRequest
    // Serialize message field [all]
    bufferOffset = _serializer.bool(obj.all, buffer, bufferOffset);
    // Serialize message field [idList]
    bufferOffset = _arraySerializer.int8(obj.idList, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmergencyStopRequest
    let len;
    let data = new EmergencyStopRequest(null);
    // Deserialize message field [all]
    data.all = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [idList]
    data.idList = _arrayDeserializer.int8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.idList.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/EmergencyStopRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5cb1723ff4e2dcbaf97dce0e23422c02';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool all
    int8[] idList
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmergencyStopRequest(null);
    if (msg.all !== undefined) {
      resolved.all = msg.all;
    }
    else {
      resolved.all = false
    }

    if (msg.idList !== undefined) {
      resolved.idList = msg.idList;
    }
    else {
      resolved.idList = []
    }

    return resolved;
    }
};

class EmergencyStopResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.states = null;
    }
    else {
      if (initObj.hasOwnProperty('states')) {
        this.states = initObj.states
      }
      else {
        this.states = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EmergencyStopResponse
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = ControllerState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EmergencyStopResponse
    let len;
    let data = new EmergencyStopResponse(null);
    // Deserialize message field [states]
    // Deserialize array length for message field [states]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.states = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.states[i] = ControllerState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 5 * object.states.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/EmergencyStopResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1860ce0365aa3b59242b46bb77db6c62';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControllerState[] states
    
    
    ================================================================================
    MSG: roboy_communication_middleware/ControllerState
    int32 id
    int8 state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EmergencyStopResponse(null);
    if (msg.states !== undefined) {
      resolved.states = new Array(msg.states.length);
      for (let i = 0; i < resolved.states.length; ++i) {
        resolved.states[i] = ControllerState.Resolve(msg.states[i]);
      }
    }
    else {
      resolved.states = []
    }

    return resolved;
    }
};

module.exports = {
  Request: EmergencyStopRequest,
  Response: EmergencyStopResponse,
  md5sum() { return 'a9d4ee2f1bc63fdf0054100392ba922e'; },
  datatype() { return 'roboy_communication_middleware/EmergencyStop'; }
};
