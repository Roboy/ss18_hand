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

class GetObjectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.properties = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('properties')) {
        this.properties = initObj.properties
      }
      else {
        this.properties = '';
      }
      if (initObj.hasOwnProperty('values')) {
        this.values = initObj.values
      }
      else {
        this.values = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObjectRequest
    // Serialize message field [properties]
    bufferOffset = _serializer.string(obj.properties, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = _serializer.string(obj.values, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObjectRequest
    let len;
    let data = new GetObjectRequest(null);
    // Deserialize message field [properties]
    data.properties = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.properties.length;
    length += object.values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/GetObjectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ad88a8dd216489d9c0df36b46129c30f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string properties
    string values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObjectRequest(null);
    if (msg.properties !== undefined) {
      resolved.properties = msg.properties;
    }
    else {
      resolved.properties = ''
    }

    if (msg.values !== undefined) {
      resolved.values = msg.values;
    }
    else {
      resolved.values = ''
    }

    return resolved;
    }
};

class GetObjectResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.instance = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('instance')) {
        this.instance = initObj.instance
      }
      else {
        this.instance = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetObjectResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [instance]
    bufferOffset = _serializer.string(obj.instance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetObjectResponse
    let len;
    let data = new GetObjectResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [instance]
    data.instance = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.instance.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/GetObjectResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55540925296eacb568db5234e46ff149';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string instance
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetObjectResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.instance !== undefined) {
      resolved.instance = msg.instance;
    }
    else {
      resolved.instance = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GetObjectRequest,
  Response: GetObjectResponse,
  md5sum() { return '5371b92e5e40731a7295d51663dd7780'; },
  datatype() { return 'roboy_communication_cognition/GetObject'; }
};
