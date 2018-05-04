// Auto-generated. Do not edit!

// (in-package roboy_communication_cognition.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class DescribeSceneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DescribeSceneRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DescribeSceneRequest
    let len;
    let data = new DescribeSceneRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DescribeSceneRequest';
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
    const resolved = new DescribeSceneRequest(null);
    return resolved;
    }
};

class DescribeSceneResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.objects_detected = null;
    }
    else {
      if (initObj.hasOwnProperty('objects_detected')) {
        this.objects_detected = initObj.objects_detected
      }
      else {
        this.objects_detected = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DescribeSceneResponse
    // Serialize message field [objects_detected]
    bufferOffset = _arraySerializer.string(obj.objects_detected, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DescribeSceneResponse
    let len;
    let data = new DescribeSceneResponse(null);
    // Deserialize message field [objects_detected]
    data.objects_detected = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.objects_detected.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DescribeSceneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7f86144326f6014074f85b3e9d900ff5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    string[] objects_detected
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DescribeSceneResponse(null);
    if (msg.objects_detected !== undefined) {
      resolved.objects_detected = msg.objects_detected;
    }
    else {
      resolved.objects_detected = []
    }

    return resolved;
    }
};

module.exports = {
  Request: DescribeSceneRequest,
  Response: DescribeSceneResponse,
  md5sum() { return '7f86144326f6014074f85b3e9d900ff5'; },
  datatype() { return 'roboy_communication_cognition/DescribeScene'; }
};
