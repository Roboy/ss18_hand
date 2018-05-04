// Auto-generated. Do not edit!

// (in-package roboy_communication_simulation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class EnergiesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnergiesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnergiesRequest
    let len;
    let data = new EnergiesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_simulation/EnergiesRequest';
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
    const resolved = new EnergiesRequest(null);
    return resolved;
    }
};

class EnergiesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.E_speed = null;
      this.E_headvel = null;
      this.E_headori = null;
      this.E_slide = null;
      this.E_effort = null;
    }
    else {
      if (initObj.hasOwnProperty('E_speed')) {
        this.E_speed = initObj.E_speed
      }
      else {
        this.E_speed = 0.0;
      }
      if (initObj.hasOwnProperty('E_headvel')) {
        this.E_headvel = initObj.E_headvel
      }
      else {
        this.E_headvel = 0.0;
      }
      if (initObj.hasOwnProperty('E_headori')) {
        this.E_headori = initObj.E_headori
      }
      else {
        this.E_headori = 0.0;
      }
      if (initObj.hasOwnProperty('E_slide')) {
        this.E_slide = initObj.E_slide
      }
      else {
        this.E_slide = 0.0;
      }
      if (initObj.hasOwnProperty('E_effort')) {
        this.E_effort = initObj.E_effort
      }
      else {
        this.E_effort = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EnergiesResponse
    // Serialize message field [E_speed]
    bufferOffset = _serializer.float64(obj.E_speed, buffer, bufferOffset);
    // Serialize message field [E_headvel]
    bufferOffset = _serializer.float64(obj.E_headvel, buffer, bufferOffset);
    // Serialize message field [E_headori]
    bufferOffset = _serializer.float64(obj.E_headori, buffer, bufferOffset);
    // Serialize message field [E_slide]
    bufferOffset = _serializer.float64(obj.E_slide, buffer, bufferOffset);
    // Serialize message field [E_effort]
    bufferOffset = _serializer.float64(obj.E_effort, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EnergiesResponse
    let len;
    let data = new EnergiesResponse(null);
    // Deserialize message field [E_speed]
    data.E_speed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [E_headvel]
    data.E_headvel = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [E_headori]
    data.E_headori = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [E_slide]
    data.E_slide = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [E_effort]
    data.E_effort = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_simulation/EnergiesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3a6c57e829cf6beb9c3918f4ad1ffcad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 E_speed
    float64 E_headvel
    float64 E_headori
    float64 E_slide
    float64 E_effort
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EnergiesResponse(null);
    if (msg.E_speed !== undefined) {
      resolved.E_speed = msg.E_speed;
    }
    else {
      resolved.E_speed = 0.0
    }

    if (msg.E_headvel !== undefined) {
      resolved.E_headvel = msg.E_headvel;
    }
    else {
      resolved.E_headvel = 0.0
    }

    if (msg.E_headori !== undefined) {
      resolved.E_headori = msg.E_headori;
    }
    else {
      resolved.E_headori = 0.0
    }

    if (msg.E_slide !== undefined) {
      resolved.E_slide = msg.E_slide;
    }
    else {
      resolved.E_slide = 0.0
    }

    if (msg.E_effort !== undefined) {
      resolved.E_effort = msg.E_effort;
    }
    else {
      resolved.E_effort = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: EnergiesRequest,
  Response: EnergiesResponse,
  md5sum() { return '3a6c57e829cf6beb9c3918f4ad1ffcad'; },
  datatype() { return 'roboy_communication_simulation/Energies'; }
};
