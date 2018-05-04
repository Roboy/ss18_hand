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

class FindInstancesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.property = null;
      this.value = null;
    }
    else {
      if (initObj.hasOwnProperty('property')) {
        this.property = initObj.property
      }
      else {
        this.property = '';
      }
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindInstancesRequest
    // Serialize message field [property]
    bufferOffset = _serializer.string(obj.property, buffer, bufferOffset);
    // Serialize message field [value]
    bufferOffset = _serializer.string(obj.value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindInstancesRequest
    let len;
    let data = new FindInstancesRequest(null);
    // Deserialize message field [property]
    data.property = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [value]
    data.value = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.property.length;
    length += object.value.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/FindInstancesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2b2dec50016b0c0aedf8dde8f36a296b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string property
    string value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindInstancesRequest(null);
    if (msg.property !== undefined) {
      resolved.property = msg.property;
    }
    else {
      resolved.property = ''
    }

    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = ''
    }

    return resolved;
    }
};

class FindInstancesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.instances = null;
    }
    else {
      if (initObj.hasOwnProperty('instances')) {
        this.instances = initObj.instances
      }
      else {
        this.instances = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FindInstancesResponse
    // Serialize message field [instances]
    bufferOffset = _arraySerializer.string(obj.instances, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FindInstancesResponse
    let len;
    let data = new FindInstancesResponse(null);
    // Deserialize message field [instances]
    data.instances = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.instances.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/FindInstancesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c37cf4d14d6c5bfa6fbe319c1865eb5a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] instances
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FindInstancesResponse(null);
    if (msg.instances !== undefined) {
      resolved.instances = msg.instances;
    }
    else {
      resolved.instances = []
    }

    return resolved;
    }
};

module.exports = {
  Request: FindInstancesRequest,
  Response: FindInstancesResponse,
  md5sum() { return '7a424b6de2ab577e112c2faf018865de'; },
  datatype() { return 'roboy_communication_cognition/FindInstances'; }
};
