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

class SaveObjectRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.class_name = null;
      this.id = null;
      this.properties = null;
      this.values = null;
    }
    else {
      if (initObj.hasOwnProperty('class_name')) {
        this.class_name = initObj.class_name
      }
      else {
        this.class_name = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
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
    // Serializes a message object of type SaveObjectRequest
    // Serialize message field [class_name]
    bufferOffset = _serializer.string(obj.class_name, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [properties]
    bufferOffset = _serializer.string(obj.properties, buffer, bufferOffset);
    // Serialize message field [values]
    bufferOffset = _serializer.string(obj.values, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveObjectRequest
    let len;
    let data = new SaveObjectRequest(null);
    // Deserialize message field [class_name]
    data.class_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [properties]
    data.properties = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [values]
    data.values = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.class_name.length;
    length += object.properties.length;
    length += object.values.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/SaveObjectRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '77239618c14c655906c86a89b54aca70';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string class_name
    int32 id
    string properties
    string values
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SaveObjectRequest(null);
    if (msg.class_name !== undefined) {
      resolved.class_name = msg.class_name;
    }
    else {
      resolved.class_name = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

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

class SaveObjectResponse {
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
    // Serializes a message object of type SaveObjectResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [instance]
    bufferOffset = _serializer.string(obj.instance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SaveObjectResponse
    let len;
    let data = new SaveObjectResponse(null);
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
    return 'roboy_communication_cognition/SaveObjectResponse';
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
    const resolved = new SaveObjectResponse(null);
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
  Request: SaveObjectRequest,
  Response: SaveObjectResponse,
  md5sum() { return '23e9feb02e011a0c456df65916cb0693'; },
  datatype() { return 'roboy_communication_cognition/SaveObject'; }
};
