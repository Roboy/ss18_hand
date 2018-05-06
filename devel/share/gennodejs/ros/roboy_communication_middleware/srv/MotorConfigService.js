// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorConfig = require('../msg/MotorConfig.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorConfigServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.config = null;
      this.setPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('config')) {
        this.config = initObj.config
      }
      else {
        this.config = new MotorConfig();
      }
      if (initObj.hasOwnProperty('setPoints')) {
        this.setPoints = initObj.setPoints
      }
      else {
        this.setPoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfigServiceRequest
    // Serialize message field [config]
    bufferOffset = MotorConfig.serialize(obj.config, buffer, bufferOffset);
    // Serialize message field [setPoints]
    bufferOffset = _arraySerializer.int32(obj.setPoints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfigServiceRequest
    let len;
    let data = new MotorConfigServiceRequest(null);
    // Deserialize message field [config]
    data.config = MotorConfig.deserialize(buffer, bufferOffset);
    // Deserialize message field [setPoints]
    data.setPoints = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += MotorConfig.getMessageSize(object.config);
    length += 4 * object.setPoints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/MotorConfigServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '753eb9662dc2af7e189d5dcaacdcb7e1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    MotorConfig config
    int32[] setPoints
    
    ================================================================================
    MSG: roboy_communication_middleware/MotorConfig
    int32 id
    uint8[] motors
    uint8[] control_mode
    int32[] outputPosMax
    int32[] outputNegMax
    int32[] spPosMax
    int32[] spNegMax
    uint16[] Kp
    uint16[] Ki
    uint16[] Kd
    uint16[] forwardGain
    uint16[] deadBand
    int32[] IntegralPosMax
    int32[] IntegralNegMax
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorConfigServiceRequest(null);
    if (msg.config !== undefined) {
      resolved.config = MotorConfig.Resolve(msg.config)
    }
    else {
      resolved.config = new MotorConfig()
    }

    if (msg.setPoints !== undefined) {
      resolved.setPoints = msg.setPoints;
    }
    else {
      resolved.setPoints = []
    }

    return resolved;
    }
};

class MotorConfigServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorConfigServiceResponse
    // Serialize message field [mode]
    bufferOffset = _arraySerializer.int32(obj.mode, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorConfigServiceResponse
    let len;
    let data = new MotorConfigServiceResponse(null);
    // Deserialize message field [mode]
    data.mode = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.mode.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/MotorConfigServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1fd7890fd399a8964959d3d06ecb53b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] mode
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorConfigServiceResponse(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorConfigServiceRequest,
  Response: MotorConfigServiceResponse,
  md5sum() { return '07934f0a5689f5ba498e42aef1da7a8e'; },
  datatype() { return 'roboy_communication_middleware/MotorConfigService'; }
};
