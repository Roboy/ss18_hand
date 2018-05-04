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

class LookAtSpeakerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookAtSpeakerRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookAtSpeakerRequest
    let len;
    let data = new LookAtSpeakerRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/LookAtSpeakerRequest';
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
    const resolved = new LookAtSpeakerRequest(null);
    return resolved;
    }
};

class LookAtSpeakerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.turned = null;
    }
    else {
      if (initObj.hasOwnProperty('turned')) {
        this.turned = initObj.turned
      }
      else {
        this.turned = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LookAtSpeakerResponse
    // Serialize message field [turned]
    bufferOffset = _serializer.bool(obj.turned, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LookAtSpeakerResponse
    let len;
    let data = new LookAtSpeakerResponse(null);
    // Deserialize message field [turned]
    data.turned = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/LookAtSpeakerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15a9db50325f4812c0499779cd2dc36e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    bool turned
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LookAtSpeakerResponse(null);
    if (msg.turned !== undefined) {
      resolved.turned = msg.turned;
    }
    else {
      resolved.turned = false
    }

    return resolved;
    }
};

module.exports = {
  Request: LookAtSpeakerRequest,
  Response: LookAtSpeakerResponse,
  md5sum() { return '15a9db50325f4812c0499779cd2dc36e'; },
  datatype() { return 'roboy_communication_cognition/LookAtSpeaker'; }
};
