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

class ADCvalue {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.adc_value = null;
      this.load = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('adc_value')) {
        this.adc_value = initObj.adc_value
      }
      else {
        this.adc_value = [];
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ADCvalue
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [adc_value]
    bufferOffset = _arraySerializer.int32(obj.adc_value, buffer, bufferOffset, null);
    // Serialize message field [load]
    bufferOffset = _arraySerializer.float32(obj.load, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ADCvalue
    let len;
    let data = new ADCvalue(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [adc_value]
    data.adc_value = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [load]
    data.load = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.adc_value.length;
    length += 4 * object.load.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/ADCvalue';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f98e33d20942e68bbee66ab1b8b068eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    int32[] adc_value
    float32[] load
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ADCvalue(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.adc_value !== undefined) {
      resolved.adc_value = msg.adc_value;
    }
    else {
      resolved.adc_value = []
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = []
    }

    return resolved;
    }
};

module.exports = ADCvalue;
