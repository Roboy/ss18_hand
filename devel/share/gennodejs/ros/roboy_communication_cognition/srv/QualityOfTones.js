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

class QualityOfTonesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeInMilliseconds = null;
      this.majorOnly = null;
    }
    else {
      if (initObj.hasOwnProperty('timeInMilliseconds')) {
        this.timeInMilliseconds = initObj.timeInMilliseconds
      }
      else {
        this.timeInMilliseconds = 0.0;
      }
      if (initObj.hasOwnProperty('majorOnly')) {
        this.majorOnly = initObj.majorOnly
      }
      else {
        this.majorOnly = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QualityOfTonesRequest
    // Serialize message field [timeInMilliseconds]
    bufferOffset = _serializer.float32(obj.timeInMilliseconds, buffer, bufferOffset);
    // Serialize message field [majorOnly]
    bufferOffset = _serializer.bool(obj.majorOnly, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfTonesRequest
    let len;
    let data = new QualityOfTonesRequest(null);
    // Deserialize message field [timeInMilliseconds]
    data.timeInMilliseconds = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [majorOnly]
    data.majorOnly = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/QualityOfTonesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '13a6b42b36123f6f155dd1e0562e1b13';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 timeInMilliseconds
    bool majorOnly
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfTonesRequest(null);
    if (msg.timeInMilliseconds !== undefined) {
      resolved.timeInMilliseconds = msg.timeInMilliseconds;
    }
    else {
      resolved.timeInMilliseconds = 0.0
    }

    if (msg.majorOnly !== undefined) {
      resolved.majorOnly = msg.majorOnly;
    }
    else {
      resolved.majorOnly = false
    }

    return resolved;
    }
};

class QualityOfTonesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.quality = null;
      this.purity = null;
      this.directionZ = null;
      this.directionY = null;
      this.hitPin = null;
    }
    else {
      if (initObj.hasOwnProperty('quality')) {
        this.quality = initObj.quality
      }
      else {
        this.quality = [];
      }
      if (initObj.hasOwnProperty('purity')) {
        this.purity = initObj.purity
      }
      else {
        this.purity = [];
      }
      if (initObj.hasOwnProperty('directionZ')) {
        this.directionZ = initObj.directionZ
      }
      else {
        this.directionZ = 0.0;
      }
      if (initObj.hasOwnProperty('directionY')) {
        this.directionY = initObj.directionY
      }
      else {
        this.directionY = [];
      }
      if (initObj.hasOwnProperty('hitPin')) {
        this.hitPin = initObj.hitPin
      }
      else {
        this.hitPin = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type QualityOfTonesResponse
    // Serialize message field [quality]
    bufferOffset = _arraySerializer.float32(obj.quality, buffer, bufferOffset, null);
    // Serialize message field [purity]
    bufferOffset = _arraySerializer.float32(obj.purity, buffer, bufferOffset, null);
    // Serialize message field [directionZ]
    bufferOffset = _serializer.float32(obj.directionZ, buffer, bufferOffset);
    // Serialize message field [directionY]
    bufferOffset = _arraySerializer.float32(obj.directionY, buffer, bufferOffset, null);
    // Serialize message field [hitPin]
    bufferOffset = _serializer.bool(obj.hitPin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfTonesResponse
    let len;
    let data = new QualityOfTonesResponse(null);
    // Deserialize message field [quality]
    data.quality = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [purity]
    data.purity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [directionZ]
    data.directionZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [directionY]
    data.directionY = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [hitPin]
    data.hitPin = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.quality.length;
    length += 4 * object.purity.length;
    length += 4 * object.directionY.length;
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/QualityOfTonesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4e7a974e4548fd927305c07206fbfc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] quality
    float32[] purity
    float32 directionZ
    float32[] directionY
    bool hitPin
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfTonesResponse(null);
    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = []
    }

    if (msg.purity !== undefined) {
      resolved.purity = msg.purity;
    }
    else {
      resolved.purity = []
    }

    if (msg.directionZ !== undefined) {
      resolved.directionZ = msg.directionZ;
    }
    else {
      resolved.directionZ = 0.0
    }

    if (msg.directionY !== undefined) {
      resolved.directionY = msg.directionY;
    }
    else {
      resolved.directionY = []
    }

    if (msg.hitPin !== undefined) {
      resolved.hitPin = msg.hitPin;
    }
    else {
      resolved.hitPin = false
    }

    return resolved;
    }
};

module.exports = {
  Request: QualityOfTonesRequest,
  Response: QualityOfTonesResponse,
  md5sum() { return 'b0819310d2b88551910c5d4d0c08bb51'; },
  datatype() { return 'roboy_communication_cognition/QualityOfTones'; }
};
