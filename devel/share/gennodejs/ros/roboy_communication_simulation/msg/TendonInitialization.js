// Auto-generated. Do not edit!

// (in-package roboy_communication_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class TendonInitialization {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.tendonID = null;
      this.maxForce = null;
      this.wirepoints = null;
      this.roboyParts = null;
    }
    else {
      if (initObj.hasOwnProperty('tendonID')) {
        this.tendonID = initObj.tendonID
      }
      else {
        this.tendonID = 0;
      }
      if (initObj.hasOwnProperty('maxForce')) {
        this.maxForce = initObj.maxForce
      }
      else {
        this.maxForce = 0.0;
      }
      if (initObj.hasOwnProperty('wirepoints')) {
        this.wirepoints = initObj.wirepoints
      }
      else {
        this.wirepoints = [];
      }
      if (initObj.hasOwnProperty('roboyParts')) {
        this.roboyParts = initObj.roboyParts
      }
      else {
        this.roboyParts = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type TendonInitialization
    // Serialize message field [tendonID]
    bufferOffset = _serializer.int32(obj.tendonID, buffer, bufferOffset);
    // Serialize message field [maxForce]
    bufferOffset = _serializer.float32(obj.maxForce, buffer, bufferOffset);
    // Serialize message field [wirepoints]
    bufferOffset = _arraySerializer.float32(obj.wirepoints, buffer, bufferOffset, null);
    // Serialize message field [roboyParts]
    bufferOffset = _arraySerializer.string(obj.roboyParts, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type TendonInitialization
    let len;
    let data = new TendonInitialization(null);
    // Deserialize message field [tendonID]
    data.tendonID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [maxForce]
    data.maxForce = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wirepoints]
    data.wirepoints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roboyParts]
    data.roboyParts = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.wirepoints.length;
    object.roboyParts.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/TendonInitialization';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '085ee5f8bb51d4a1c10813b9fc10e600';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 tendonID
    #maximal applicable force	
    float32 maxForce
    #world space coord, 3 floats == one coordinate
    float32[] wirepoints
    #names of roboypart each wirepoint is linked to
    string[] roboyParts
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new TendonInitialization(null);
    if (msg.tendonID !== undefined) {
      resolved.tendonID = msg.tendonID;
    }
    else {
      resolved.tendonID = 0
    }

    if (msg.maxForce !== undefined) {
      resolved.maxForce = msg.maxForce;
    }
    else {
      resolved.maxForce = 0.0
    }

    if (msg.wirepoints !== undefined) {
      resolved.wirepoints = msg.wirepoints;
    }
    else {
      resolved.wirepoints = []
    }

    if (msg.roboyParts !== undefined) {
      resolved.roboyParts = msg.roboyParts;
    }
    else {
      resolved.roboyParts = []
    }

    return resolved;
    }
};

module.exports = TendonInitialization;
