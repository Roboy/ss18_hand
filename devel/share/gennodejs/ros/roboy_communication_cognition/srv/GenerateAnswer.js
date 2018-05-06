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

class GenerateAnswerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.text_input = null;
    }
    else {
      if (initObj.hasOwnProperty('text_input')) {
        this.text_input = initObj.text_input
      }
      else {
        this.text_input = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateAnswerRequest
    // Serialize message field [text_input]
    bufferOffset = _serializer.string(obj.text_input, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateAnswerRequest
    let len;
    let data = new GenerateAnswerRequest(null);
    // Deserialize message field [text_input]
    data.text_input = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text_input.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/GenerateAnswerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '42190a4ba90a4ddc5e922d0a6d5b790b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string text_input
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateAnswerRequest(null);
    if (msg.text_input !== undefined) {
      resolved.text_input = msg.text_input;
    }
    else {
      resolved.text_input = ''
    }

    return resolved;
    }
};

class GenerateAnswerResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
      this.text_output = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
      if (initObj.hasOwnProperty('text_output')) {
        this.text_output = initObj.text_output
      }
      else {
        this.text_output = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GenerateAnswerResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    // Serialize message field [text_output]
    bufferOffset = _serializer.string(obj.text_output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GenerateAnswerResponse
    let len;
    let data = new GenerateAnswerResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [text_output]
    data.text_output = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.text_output.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/GenerateAnswerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5077cb718fd1038a08f49aced694b267';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    string text_output
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GenerateAnswerResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    if (msg.text_output !== undefined) {
      resolved.text_output = msg.text_output;
    }
    else {
      resolved.text_output = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: GenerateAnswerRequest,
  Response: GenerateAnswerResponse,
  md5sum() { return 'd4741618daf7a94d6af22e9650d416c0'; },
  datatype() { return 'roboy_communication_cognition/GenerateAnswer'; }
};
