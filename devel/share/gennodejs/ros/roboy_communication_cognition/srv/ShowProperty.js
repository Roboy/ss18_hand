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

class ShowPropertyRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.object = null;
    }
    else {
      if (initObj.hasOwnProperty('object')) {
        this.object = initObj.object
      }
      else {
        this.object = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowPropertyRequest
    // Serialize message field [object]
    bufferOffset = _serializer.string(obj.object, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowPropertyRequest
    let len;
    let data = new ShowPropertyRequest(null);
    // Deserialize message field [object]
    data.object = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.object.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/ShowPropertyRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd32a80a49357522333ff3e758d0474bf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string object
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShowPropertyRequest(null);
    if (msg.object !== undefined) {
      resolved.object = msg.object;
    }
    else {
      resolved.object = ''
    }

    return resolved;
    }
};

class ShowPropertyResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.property = null;
    }
    else {
      if (initObj.hasOwnProperty('property')) {
        this.property = initObj.property
      }
      else {
        this.property = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ShowPropertyResponse
    // Serialize message field [property]
    bufferOffset = _serializer.string(obj.property, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ShowPropertyResponse
    let len;
    let data = new ShowPropertyResponse(null);
    // Deserialize message field [property]
    data.property = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.property.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/ShowPropertyResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '91972fb903649c0a05c7379f59be5fea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string property
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ShowPropertyResponse(null);
    if (msg.property !== undefined) {
      resolved.property = msg.property;
    }
    else {
      resolved.property = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ShowPropertyRequest,
  Response: ShowPropertyResponse,
  md5sum() { return 'dc601e0fdf79ede7c0526ff3f333e5b2'; },
  datatype() { return 'roboy_communication_cognition/ShowProperty'; }
};
