// Auto-generated. Do not edit!

// (in-package roboy_communication_cognition.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class NewFacialFeatures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.speaking = null;
      this.ff = null;
    }
    else {
      if (initObj.hasOwnProperty('speaking')) {
        this.speaking = initObj.speaking
      }
      else {
        this.speaking = false;
      }
      if (initObj.hasOwnProperty('ff')) {
        this.ff = initObj.ff
      }
      else {
        this.ff = new Array(128).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type NewFacialFeatures
    // Serialize message field [speaking]
    bufferOffset = _serializer.bool(obj.speaking, buffer, bufferOffset);
    // Check that the constant length array field [ff] has the right length
    if (obj.ff.length !== 128) {
      throw new Error('Unable to serialize array field ff - length must be 128')
    }
    // Serialize message field [ff]
    bufferOffset = _arraySerializer.float64(obj.ff, buffer, bufferOffset, 128);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type NewFacialFeatures
    let len;
    let data = new NewFacialFeatures(null);
    // Deserialize message field [speaking]
    data.speaking = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [ff]
    data.ff = _arrayDeserializer.float64(buffer, bufferOffset, 128)
    return data;
  }

  static getMessageSize(object) {
    return 1025;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_cognition/NewFacialFeatures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '782758a9ad871ad0f7c61033e6a9c6cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #only for unrecognized faces
    #is person speaking?
    bool speaking
    #facial features (128x1 vector)
    float64[128] ff
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new NewFacialFeatures(null);
    if (msg.speaking !== undefined) {
      resolved.speaking = msg.speaking;
    }
    else {
      resolved.speaking = false
    }

    if (msg.ff !== undefined) {
      resolved.ff = msg.ff;
    }
    else {
      resolved.ff = new Array(128).fill(0)
    }

    return resolved;
    }
};

module.exports = NewFacialFeatures;
