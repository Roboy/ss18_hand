// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class JointStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.absAngles = null;
      this.relAngles = null;
      this.tacho = null;
      this.agcGain = null;
      this.tooFar = null;
      this.tooClose = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('absAngles')) {
        this.absAngles = initObj.absAngles
      }
      else {
        this.absAngles = [];
      }
      if (initObj.hasOwnProperty('relAngles')) {
        this.relAngles = initObj.relAngles
      }
      else {
        this.relAngles = [];
      }
      if (initObj.hasOwnProperty('tacho')) {
        this.tacho = initObj.tacho
      }
      else {
        this.tacho = [];
      }
      if (initObj.hasOwnProperty('agcGain')) {
        this.agcGain = initObj.agcGain
      }
      else {
        this.agcGain = [];
      }
      if (initObj.hasOwnProperty('tooFar')) {
        this.tooFar = initObj.tooFar
      }
      else {
        this.tooFar = [];
      }
      if (initObj.hasOwnProperty('tooClose')) {
        this.tooClose = initObj.tooClose
      }
      else {
        this.tooClose = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointStatus
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [absAngles]
    bufferOffset = _arraySerializer.uint32(obj.absAngles, buffer, bufferOffset, null);
    // Serialize message field [relAngles]
    bufferOffset = _arraySerializer.uint32(obj.relAngles, buffer, bufferOffset, null);
    // Serialize message field [tacho]
    bufferOffset = _arraySerializer.uint32(obj.tacho, buffer, bufferOffset, null);
    // Serialize message field [agcGain]
    bufferOffset = _arraySerializer.uint8(obj.agcGain, buffer, bufferOffset, null);
    // Serialize message field [tooFar]
    bufferOffset = _arraySerializer.bool(obj.tooFar, buffer, bufferOffset, null);
    // Serialize message field [tooClose]
    bufferOffset = _arraySerializer.bool(obj.tooClose, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointStatus
    let len;
    let data = new JointStatus(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [absAngles]
    data.absAngles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [relAngles]
    data.relAngles = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [tacho]
    data.tacho = _arrayDeserializer.uint32(buffer, bufferOffset, null)
    // Deserialize message field [agcGain]
    data.agcGain = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [tooFar]
    data.tooFar = _arrayDeserializer.bool(buffer, bufferOffset, null)
    // Deserialize message field [tooClose]
    data.tooClose = _arrayDeserializer.bool(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.absAngles.length;
    length += 4 * object.relAngles.length;
    length += 4 * object.tacho.length;
    length += object.agcGain.length;
    length += object.tooFar.length;
    length += object.tooClose.length;
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/JointStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '126236eed80c5a19c2a712307f0137f2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    uint32[] absAngles
    uint32[] relAngles
    uint32[] tacho
    uint8[] agcGain
    bool[] tooFar
    bool[] tooClose
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointStatus(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.absAngles !== undefined) {
      resolved.absAngles = msg.absAngles;
    }
    else {
      resolved.absAngles = []
    }

    if (msg.relAngles !== undefined) {
      resolved.relAngles = msg.relAngles;
    }
    else {
      resolved.relAngles = []
    }

    if (msg.tacho !== undefined) {
      resolved.tacho = msg.tacho;
    }
    else {
      resolved.tacho = []
    }

    if (msg.agcGain !== undefined) {
      resolved.agcGain = msg.agcGain;
    }
    else {
      resolved.agcGain = []
    }

    if (msg.tooFar !== undefined) {
      resolved.tooFar = msg.tooFar;
    }
    else {
      resolved.tooFar = []
    }

    if (msg.tooClose !== undefined) {
      resolved.tooClose = msg.tooClose;
    }
    else {
      resolved.tooClose = []
    }

    return resolved;
    }
};

module.exports = JointStatus;
