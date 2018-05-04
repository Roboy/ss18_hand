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

class MotorRecord {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.recordTime = null;
      this.samplingTime = null;
      this.control_mode = null;
      this.motor0 = null;
      this.motor1 = null;
      this.motor2 = null;
      this.motor3 = null;
      this.motor4 = null;
      this.motor5 = null;
      this.motor6 = null;
      this.motor7 = null;
      this.motor8 = null;
      this.motor9 = null;
      this.motor10 = null;
      this.motor11 = null;
      this.motor12 = null;
      this.motor13 = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('recordTime')) {
        this.recordTime = initObj.recordTime
      }
      else {
        this.recordTime = 0.0;
      }
      if (initObj.hasOwnProperty('samplingTime')) {
        this.samplingTime = initObj.samplingTime
      }
      else {
        this.samplingTime = 0;
      }
      if (initObj.hasOwnProperty('control_mode')) {
        this.control_mode = initObj.control_mode
      }
      else {
        this.control_mode = 0;
      }
      if (initObj.hasOwnProperty('motor0')) {
        this.motor0 = initObj.motor0
      }
      else {
        this.motor0 = [];
      }
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = [];
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = [];
      }
      if (initObj.hasOwnProperty('motor3')) {
        this.motor3 = initObj.motor3
      }
      else {
        this.motor3 = [];
      }
      if (initObj.hasOwnProperty('motor4')) {
        this.motor4 = initObj.motor4
      }
      else {
        this.motor4 = [];
      }
      if (initObj.hasOwnProperty('motor5')) {
        this.motor5 = initObj.motor5
      }
      else {
        this.motor5 = [];
      }
      if (initObj.hasOwnProperty('motor6')) {
        this.motor6 = initObj.motor6
      }
      else {
        this.motor6 = [];
      }
      if (initObj.hasOwnProperty('motor7')) {
        this.motor7 = initObj.motor7
      }
      else {
        this.motor7 = [];
      }
      if (initObj.hasOwnProperty('motor8')) {
        this.motor8 = initObj.motor8
      }
      else {
        this.motor8 = [];
      }
      if (initObj.hasOwnProperty('motor9')) {
        this.motor9 = initObj.motor9
      }
      else {
        this.motor9 = [];
      }
      if (initObj.hasOwnProperty('motor10')) {
        this.motor10 = initObj.motor10
      }
      else {
        this.motor10 = [];
      }
      if (initObj.hasOwnProperty('motor11')) {
        this.motor11 = initObj.motor11
      }
      else {
        this.motor11 = [];
      }
      if (initObj.hasOwnProperty('motor12')) {
        this.motor12 = initObj.motor12
      }
      else {
        this.motor12 = [];
      }
      if (initObj.hasOwnProperty('motor13')) {
        this.motor13 = initObj.motor13
      }
      else {
        this.motor13 = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorRecord
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [recordTime]
    bufferOffset = _serializer.float32(obj.recordTime, buffer, bufferOffset);
    // Serialize message field [samplingTime]
    bufferOffset = _serializer.int32(obj.samplingTime, buffer, bufferOffset);
    // Serialize message field [control_mode]
    bufferOffset = _serializer.uint8(obj.control_mode, buffer, bufferOffset);
    // Serialize message field [motor0]
    bufferOffset = _arraySerializer.int32(obj.motor0, buffer, bufferOffset, null);
    // Serialize message field [motor1]
    bufferOffset = _arraySerializer.int32(obj.motor1, buffer, bufferOffset, null);
    // Serialize message field [motor2]
    bufferOffset = _arraySerializer.int32(obj.motor2, buffer, bufferOffset, null);
    // Serialize message field [motor3]
    bufferOffset = _arraySerializer.int32(obj.motor3, buffer, bufferOffset, null);
    // Serialize message field [motor4]
    bufferOffset = _arraySerializer.int32(obj.motor4, buffer, bufferOffset, null);
    // Serialize message field [motor5]
    bufferOffset = _arraySerializer.int32(obj.motor5, buffer, bufferOffset, null);
    // Serialize message field [motor6]
    bufferOffset = _arraySerializer.int32(obj.motor6, buffer, bufferOffset, null);
    // Serialize message field [motor7]
    bufferOffset = _arraySerializer.int32(obj.motor7, buffer, bufferOffset, null);
    // Serialize message field [motor8]
    bufferOffset = _arraySerializer.int32(obj.motor8, buffer, bufferOffset, null);
    // Serialize message field [motor9]
    bufferOffset = _arraySerializer.int32(obj.motor9, buffer, bufferOffset, null);
    // Serialize message field [motor10]
    bufferOffset = _arraySerializer.int32(obj.motor10, buffer, bufferOffset, null);
    // Serialize message field [motor11]
    bufferOffset = _arraySerializer.int32(obj.motor11, buffer, bufferOffset, null);
    // Serialize message field [motor12]
    bufferOffset = _arraySerializer.int32(obj.motor12, buffer, bufferOffset, null);
    // Serialize message field [motor13]
    bufferOffset = _arraySerializer.int32(obj.motor13, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorRecord
    let len;
    let data = new MotorRecord(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [recordTime]
    data.recordTime = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [samplingTime]
    data.samplingTime = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [control_mode]
    data.control_mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor0]
    data.motor0 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor1]
    data.motor1 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor2]
    data.motor2 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor3]
    data.motor3 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor4]
    data.motor4 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor5]
    data.motor5 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor6]
    data.motor6 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor7]
    data.motor7 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor8]
    data.motor8 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor9]
    data.motor9 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor10]
    data.motor10 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor11]
    data.motor11 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor12]
    data.motor12 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [motor13]
    data.motor13 = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.motor0.length;
    length += 4 * object.motor1.length;
    length += 4 * object.motor2.length;
    length += 4 * object.motor3.length;
    length += 4 * object.motor4.length;
    length += 4 * object.motor5.length;
    length += 4 * object.motor6.length;
    length += 4 * object.motor7.length;
    length += 4 * object.motor8.length;
    length += 4 * object.motor9.length;
    length += 4 * object.motor10.length;
    length += 4 * object.motor11.length;
    length += 4 * object.motor12.length;
    length += 4 * object.motor13.length;
    return length + 66;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/MotorRecord';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fdc40ac028fa6d92b5ce4d22fd304528';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    float32 recordTime
    int32 samplingTime
    uint8 control_mode
    int32[] motor0
    int32[] motor1
    int32[] motor2
    int32[] motor3
    int32[] motor4
    int32[] motor5
    int32[] motor6
    int32[] motor7
    int32[] motor8
    int32[] motor9
    int32[] motor10
    int32[] motor11
    int32[] motor12
    int32[] motor13
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorRecord(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.recordTime !== undefined) {
      resolved.recordTime = msg.recordTime;
    }
    else {
      resolved.recordTime = 0.0
    }

    if (msg.samplingTime !== undefined) {
      resolved.samplingTime = msg.samplingTime;
    }
    else {
      resolved.samplingTime = 0
    }

    if (msg.control_mode !== undefined) {
      resolved.control_mode = msg.control_mode;
    }
    else {
      resolved.control_mode = 0
    }

    if (msg.motor0 !== undefined) {
      resolved.motor0 = msg.motor0;
    }
    else {
      resolved.motor0 = []
    }

    if (msg.motor1 !== undefined) {
      resolved.motor1 = msg.motor1;
    }
    else {
      resolved.motor1 = []
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = msg.motor2;
    }
    else {
      resolved.motor2 = []
    }

    if (msg.motor3 !== undefined) {
      resolved.motor3 = msg.motor3;
    }
    else {
      resolved.motor3 = []
    }

    if (msg.motor4 !== undefined) {
      resolved.motor4 = msg.motor4;
    }
    else {
      resolved.motor4 = []
    }

    if (msg.motor5 !== undefined) {
      resolved.motor5 = msg.motor5;
    }
    else {
      resolved.motor5 = []
    }

    if (msg.motor6 !== undefined) {
      resolved.motor6 = msg.motor6;
    }
    else {
      resolved.motor6 = []
    }

    if (msg.motor7 !== undefined) {
      resolved.motor7 = msg.motor7;
    }
    else {
      resolved.motor7 = []
    }

    if (msg.motor8 !== undefined) {
      resolved.motor8 = msg.motor8;
    }
    else {
      resolved.motor8 = []
    }

    if (msg.motor9 !== undefined) {
      resolved.motor9 = msg.motor9;
    }
    else {
      resolved.motor9 = []
    }

    if (msg.motor10 !== undefined) {
      resolved.motor10 = msg.motor10;
    }
    else {
      resolved.motor10 = []
    }

    if (msg.motor11 !== undefined) {
      resolved.motor11 = msg.motor11;
    }
    else {
      resolved.motor11 = []
    }

    if (msg.motor12 !== undefined) {
      resolved.motor12 = msg.motor12;
    }
    else {
      resolved.motor12 = []
    }

    if (msg.motor13 !== undefined) {
      resolved.motor13 = msg.motor13;
    }
    else {
      resolved.motor13 = []
    }

    return resolved;
    }
};

module.exports = MotorRecord;
