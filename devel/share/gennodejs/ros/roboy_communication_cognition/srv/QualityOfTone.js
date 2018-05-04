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

class QualityOfToneRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tone = null;
      this.timeInMilliseconds = null;
      this.majorOnly = null;
    }
    else {
      if (initObj.hasOwnProperty('tone')) {
        this.tone = initObj.tone
      }
      else {
        this.tone = '';
      }
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
    // Serializes a message object of type QualityOfToneRequest
    // Serialize message field [tone]
    bufferOffset = _serializer.string(obj.tone, buffer, bufferOffset);
    // Serialize message field [timeInMilliseconds]
    bufferOffset = _serializer.float32(obj.timeInMilliseconds, buffer, bufferOffset);
    // Serialize message field [majorOnly]
    bufferOffset = _serializer.bool(obj.majorOnly, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfToneRequest
    let len;
    let data = new QualityOfToneRequest(null);
    // Deserialize message field [tone]
    data.tone = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [timeInMilliseconds]
    data.timeInMilliseconds = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [majorOnly]
    data.majorOnly = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.tone.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/QualityOfToneRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '24bc5808ec6c93933487ee2461a3492b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string tone
    float32 timeInMilliseconds
    bool majorOnly
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfToneRequest(null);
    if (msg.tone !== undefined) {
      resolved.tone = msg.tone;
    }
    else {
      resolved.tone = ''
    }

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

class QualityOfToneResponse {
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
        this.quality = 0.0;
      }
      if (initObj.hasOwnProperty('purity')) {
        this.purity = initObj.purity
      }
      else {
        this.purity = 0.0;
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
        this.directionY = 0.0;
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
    // Serializes a message object of type QualityOfToneResponse
    // Serialize message field [quality]
    bufferOffset = _serializer.float32(obj.quality, buffer, bufferOffset);
    // Serialize message field [purity]
    bufferOffset = _serializer.float32(obj.purity, buffer, bufferOffset);
    // Serialize message field [directionZ]
    bufferOffset = _serializer.float32(obj.directionZ, buffer, bufferOffset);
    // Serialize message field [directionY]
    bufferOffset = _serializer.float32(obj.directionY, buffer, bufferOffset);
    // Serialize message field [hitPin]
    bufferOffset = _serializer.bool(obj.hitPin, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type QualityOfToneResponse
    let len;
    let data = new QualityOfToneResponse(null);
    // Deserialize message field [quality]
    data.quality = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [purity]
    data.purity = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [directionZ]
    data.directionZ = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [directionY]
    data.directionY = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [hitPin]
    data.hitPin = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_cognition/QualityOfToneResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3ecd484b1871a72a048f022c3cda1d2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 quality
    float32 purity
    float32 directionZ
    float32 directionY
    bool hitPin
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new QualityOfToneResponse(null);
    if (msg.quality !== undefined) {
      resolved.quality = msg.quality;
    }
    else {
      resolved.quality = 0.0
    }

    if (msg.purity !== undefined) {
      resolved.purity = msg.purity;
    }
    else {
      resolved.purity = 0.0
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
      resolved.directionY = 0.0
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
  Request: QualityOfToneRequest,
  Response: QualityOfToneResponse,
  md5sum() { return 'ebc7c4e9f07e3e393dc5857ee7083482'; },
  datatype() { return 'roboy_communication_cognition/QualityOfTone'; }
};
