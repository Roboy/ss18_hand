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


//-----------------------------------------------------------

class DanceTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.trajectory_name = null;
    }
    else {
      if (initObj.hasOwnProperty('trajectory_name')) {
        this.trajectory_name = initObj.trajectory_name
      }
      else {
        this.trajectory_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DanceTrajectoryRequest
    // Serialize message field [trajectory_name]
    bufferOffset = _serializer.string(obj.trajectory_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DanceTrajectoryRequest
    let len;
    let data = new DanceTrajectoryRequest(null);
    // Deserialize message field [trajectory_name]
    data.trajectory_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.trajectory_name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/DanceTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1811518113b89edafd5bab82a308c0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string trajectory_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DanceTrajectoryRequest(null);
    if (msg.trajectory_name !== undefined) {
      resolved.trajectory_name = msg.trajectory_name;
    }
    else {
      resolved.trajectory_name = ''
    }

    return resolved;
    }
};

class DanceTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DanceTrajectoryResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DanceTrajectoryResponse
    let len;
    let data = new DanceTrajectoryResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/DanceTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DanceTrajectoryResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: DanceTrajectoryRequest,
  Response: DanceTrajectoryResponse,
  md5sum() { return 'c1811518113b89edafd5bab82a308c0b'; },
  datatype() { return 'roboy_communication_middleware/DanceTrajectory'; }
};
