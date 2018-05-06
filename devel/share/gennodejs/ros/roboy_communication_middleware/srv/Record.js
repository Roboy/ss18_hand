// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllerRequest = require('../msg/ControllerRequest.js');

//-----------------------------------------------------------

let Trajectory = require('../msg/Trajectory.js');

//-----------------------------------------------------------

class RecordRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.controllers = null;
      this.sampleRate = null;
    }
    else {
      if (initObj.hasOwnProperty('controllers')) {
        this.controllers = initObj.controllers
      }
      else {
        this.controllers = [];
      }
      if (initObj.hasOwnProperty('sampleRate')) {
        this.sampleRate = initObj.sampleRate
      }
      else {
        this.sampleRate = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordRequest
    // Serialize message field [controllers]
    // Serialize the length for message field [controllers]
    bufferOffset = _serializer.uint32(obj.controllers.length, buffer, bufferOffset);
    obj.controllers.forEach((val) => {
      bufferOffset = ControllerRequest.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [sampleRate]
    bufferOffset = _serializer.float32(obj.sampleRate, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordRequest
    let len;
    let data = new RecordRequest(null);
    // Deserialize message field [controllers]
    // Deserialize array length for message field [controllers]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.controllers = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.controllers[i] = ControllerRequest.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [sampleRate]
    data.sampleRate = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.controllers.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/RecordRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07d47afdfb09665ab08eab198db875ce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ControllerRequest[] controllers
    float32 sampleRate
    
    ================================================================================
    MSG: roboy_communication_middleware/ControllerRequest
    int32    id
    uint32   controlmode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordRequest(null);
    if (msg.controllers !== undefined) {
      resolved.controllers = new Array(msg.controllers.length);
      for (let i = 0; i < resolved.controllers.length; ++i) {
        resolved.controllers[i] = ControllerRequest.Resolve(msg.controllers[i]);
      }
    }
    else {
      resolved.controllers = []
    }

    if (msg.sampleRate !== undefined) {
      resolved.sampleRate = msg.sampleRate;
    }
    else {
      resolved.sampleRate = 0.0
    }

    return resolved;
    }
};

class RecordResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectories = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectories')) {
        this.trajectories = initObj.trajectories
      }
      else {
        this.trajectories = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RecordResponse
    // Serialize message field [trajectories]
    // Serialize the length for message field [trajectories]
    bufferOffset = _serializer.uint32(obj.trajectories.length, buffer, bufferOffset);
    obj.trajectories.forEach((val) => {
      bufferOffset = Trajectory.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RecordResponse
    let len;
    let data = new RecordResponse(null);
    // Deserialize message field [trajectories]
    // Deserialize array length for message field [trajectories]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajectories = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajectories[i] = Trajectory.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.trajectories.forEach((val) => {
      length += Trajectory.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/RecordResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5e4ac1689a0e39ee0a973eb31bd5b636';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Trajectory[] trajectories
    
    ================================================================================
    MSG: roboy_communication_middleware/Trajectory
    uint32 id
    float32 samplerate
    float32[] waypoints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RecordResponse(null);
    if (msg.trajectories !== undefined) {
      resolved.trajectories = new Array(msg.trajectories.length);
      for (let i = 0; i < resolved.trajectories.length; ++i) {
        resolved.trajectories[i] = Trajectory.Resolve(msg.trajectories[i]);
      }
    }
    else {
      resolved.trajectories = []
    }

    return resolved;
    }
};

module.exports = {
  Request: RecordRequest,
  Response: RecordResponse,
  md5sum() { return '8246afadbae0b4cfcc4b33aa0dfa16f2'; },
  datatype() { return 'roboy_communication_middleware/Record'; }
};
