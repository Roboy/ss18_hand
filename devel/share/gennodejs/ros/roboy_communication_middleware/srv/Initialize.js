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

class InitializeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.idList = null;
      this.controlmode = null;
    }
    else {
      if (initObj.hasOwnProperty('idList')) {
        this.idList = initObj.idList
      }
      else {
        this.idList = [];
      }
      if (initObj.hasOwnProperty('controlmode')) {
        this.controlmode = initObj.controlmode
      }
      else {
        this.controlmode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InitializeRequest
    // Serialize message field [idList]
    bufferOffset = _arraySerializer.int8(obj.idList, buffer, bufferOffset, null);
    // Serialize message field [controlmode]
    bufferOffset = _arraySerializer.uint8(obj.controlmode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitializeRequest
    let len;
    let data = new InitializeRequest(null);
    // Deserialize message field [idList]
    data.idList = _arrayDeserializer.int8(buffer, bufferOffset, null)
    // Deserialize message field [controlmode]
    data.controlmode = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.idList.length;
    length += object.controlmode.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/InitializeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e0591953f6b567fe9ce7cfe32b66c94e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8[] idList
    uint8[] controlmode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InitializeRequest(null);
    if (msg.idList !== undefined) {
      resolved.idList = msg.idList;
    }
    else {
      resolved.idList = []
    }

    if (msg.controlmode !== undefined) {
      resolved.controlmode = msg.controlmode;
    }
    else {
      resolved.controlmode = []
    }

    return resolved;
    }
};

class InitializeResponse {
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
    // Serializes a message object of type InitializeResponse
    // Serialize message field [states]
    // Serialize the length for message field [states]
    bufferOffset = _serializer.uint32(obj.states.length, buffer, bufferOffset);
    obj.states.forEach((val) => {
      bufferOffset = ControllerState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InitializeResponse
    let len;
    let data = new InitializeResponse(null);
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
    return 'roboy_communication_middleware/InitializeResponse';
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
    const resolved = new InitializeResponse(null);
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
  Request: InitializeRequest,
  Response: InitializeResponse,
  md5sum() { return '9549151cdabb82b0cb5be3949926ea6c'; },
  datatype() { return 'roboy_communication_middleware/Initialize'; }
};
