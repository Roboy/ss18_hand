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

class DetectFaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectFaceRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectFaceRequest
    let len;
    let data = new DetectFaceRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DetectFaceRequest';
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
    const resolved = new DetectFaceRequest(null);
    return resolved;
    }
};

class DetectFaceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.face_detected = null;
    }
    else {
      if (initObj.hasOwnProperty('face_detected')) {
        this.face_detected = initObj.face_detected
      }
      else {
        this.face_detected = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectFaceResponse
    // Serialize message field [face_detected]
    bufferOffset = _serializer.bool(obj.face_detected, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectFaceResponse
    let len;
    let data = new DetectFaceResponse(null);
    // Deserialize message field [face_detected]
    data.face_detected = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DetectFaceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94fee4081dfe1f4cd412b0ed430e52b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool face_detected
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectFaceResponse(null);
    if (msg.face_detected !== undefined) {
      resolved.face_detected = msg.face_detected;
    }
    else {
      resolved.face_detected = false
    }

    return resolved;
    }
};

module.exports = {
  Request: DetectFaceRequest,
  Response: DetectFaceResponse,
  md5sum() { return '94fee4081dfe1f4cd412b0ed430e52b4'; },
  datatype() { return 'roboy_communication_cognition/DetectFace'; }
};
