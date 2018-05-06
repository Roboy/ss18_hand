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

class DataQueryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.payload = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = '';
      }
      if (initObj.hasOwnProperty('payload')) {
        this.payload = initObj.payload
      }
      else {
        this.payload = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataQueryRequest
    // Serialize message field [header]
    bufferOffset = _serializer.string(obj.header, buffer, bufferOffset);
    // Serialize message field [payload]
    bufferOffset = _serializer.string(obj.payload, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataQueryRequest
    let len;
    let data = new DataQueryRequest(null);
    // Deserialize message field [header]
    data.header = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [payload]
    data.payload = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.header.length;
    length += object.payload.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DataQueryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '490099289a3280e4896dea4fef7b0f72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string header
    string payload
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataQueryRequest(null);
    if (msg.header !== undefined) {
      resolved.header = msg.header;
    }
    else {
      resolved.header = ''
    }

    if (msg.payload !== undefined) {
      resolved.payload = msg.payload;
    }
    else {
      resolved.payload = ''
    }

    return resolved;
    }
};

class DataQueryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.answer = null;
    }
    else {
      if (initObj.hasOwnProperty('answer')) {
        this.answer = initObj.answer
      }
      else {
        this.answer = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DataQueryResponse
    // Serialize message field [answer]
    bufferOffset = _serializer.string(obj.answer, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DataQueryResponse
    let len;
    let data = new DataQueryResponse(null);
    // Deserialize message field [answer]
    data.answer = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.answer.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/DataQueryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7e708f879c94bb931716d8f4f130f30';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string answer
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DataQueryResponse(null);
    if (msg.answer !== undefined) {
      resolved.answer = msg.answer;
    }
    else {
      resolved.answer = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: DataQueryRequest,
  Response: DataQueryResponse,
  md5sum() { return '069affd70d154d413f85fd5c1967eed6'; },
  datatype() { return 'roboy_communication_cognition/DataQuery'; }
};
