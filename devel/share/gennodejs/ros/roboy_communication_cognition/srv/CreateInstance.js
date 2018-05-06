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

class CreateInstanceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_class = null;
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('object_class')) {
        this.object_class = initObj.object_class
      }
      else {
        this.object_class = '';
      }
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateInstanceRequest
    // Serialize message field [object_class]
    bufferOffset = _serializer.string(obj.object_class, buffer, bufferOffset);
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateInstanceRequest
    let len;
    let data = new CreateInstanceRequest(null);
    // Deserialize message field [object_class]
    data.object_class = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_class.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/CreateInstanceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '718aed5b46e1cd291d0c2cd4004be187';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_class
    int32 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateInstanceRequest(null);
    if (msg.object_class !== undefined) {
      resolved.object_class = msg.object_class;
    }
    else {
      resolved.object_class = ''
    }

    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class CreateInstanceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instance = null;
    }
    else {
      if (initObj.hasOwnProperty('instance')) {
        this.instance = initObj.instance
      }
      else {
        this.instance = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CreateInstanceResponse
    // Serialize message field [instance]
    bufferOffset = _serializer.string(obj.instance, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CreateInstanceResponse
    let len;
    let data = new CreateInstanceResponse(null);
    // Deserialize message field [instance]
    data.instance = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.instance.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/CreateInstanceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a189cfe330fcc645d0364f487b22a38';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string instance
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CreateInstanceResponse(null);
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
  Request: CreateInstanceRequest,
  Response: CreateInstanceResponse,
  md5sum() { return '257cb06b1a8f1794705928d0364b72b0'; },
  datatype() { return 'roboy_communication_cognition/CreateInstance'; }
};
