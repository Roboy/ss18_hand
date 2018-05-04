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

class ShowInstancesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object_class = null;
    }
    else {
      if (initObj.hasOwnProperty('object_class')) {
        this.object_class = initObj.object_class
      }
      else {
        this.object_class = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowInstancesRequest
    // Serialize message field [object_class]
    bufferOffset = _serializer.string(obj.object_class, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowInstancesRequest
    let len;
    let data = new ShowInstancesRequest(null);
    // Deserialize message field [object_class]
    data.object_class = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object_class.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/ShowInstancesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '389886f9c8c47a5d896d81d7b7728dc7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object_class
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShowInstancesRequest(null);
    if (msg.object_class !== undefined) {
      resolved.object_class = msg.object_class;
    }
    else {
      resolved.object_class = ''
    }

    return resolved;
    }
};

class ShowInstancesResponse {
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
    // Serializes a message object of type ShowInstancesResponse
    // Serialize message field [instances]
    bufferOffset = _arraySerializer.string(obj.instances, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowInstancesResponse
    let len;
    let data = new ShowInstancesResponse(null);
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
    return 'roboy_communication_cognition/ShowInstancesResponse';
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
    const resolved = new ShowInstancesResponse(null);
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
  Request: ShowInstancesRequest,
  Response: ShowInstancesResponse,
  md5sum() { return 'cdb5eab71cb46cce11dc358585f13c8e'; },
  datatype() { return 'roboy_communication_cognition/ShowInstances'; }
};
