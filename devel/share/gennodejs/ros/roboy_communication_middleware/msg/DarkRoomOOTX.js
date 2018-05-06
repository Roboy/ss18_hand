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

class DarkRoomOOTX {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lighthouse = null;
      this.fw_version = null;
      this.ID = null;
      this.fcal_0_phase = null;
      this.fcal_1_phase = null;
      this.fcal_0_tilt = null;
      this.fcal_1_tilt = null;
      this.unlock_count = null;
      this.hw_version = null;
      this.fcal_0_curve = null;
      this.fcal_1_curve = null;
      this.accel_dir_x = null;
      this.accel_dir_y = null;
      this.accel_dir_z = null;
      this.fcal_0_gibphase = null;
      this.fcal_1_gibphase = null;
      this.fcal_0_gibmag = null;
      this.fcal_1_gibmag = null;
      this.mode = null;
      this.faults = null;
      this.crc32 = null;
    }
    else {
      if (initObj.hasOwnProperty('lighthouse')) {
        this.lighthouse = initObj.lighthouse
      }
      else {
        this.lighthouse = 0;
      }
      if (initObj.hasOwnProperty('fw_version')) {
        this.fw_version = initObj.fw_version
      }
      else {
        this.fw_version = 0;
      }
      if (initObj.hasOwnProperty('ID')) {
        this.ID = initObj.ID
      }
      else {
        this.ID = 0;
      }
      if (initObj.hasOwnProperty('fcal_0_phase')) {
        this.fcal_0_phase = initObj.fcal_0_phase
      }
      else {
        this.fcal_0_phase = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_1_phase')) {
        this.fcal_1_phase = initObj.fcal_1_phase
      }
      else {
        this.fcal_1_phase = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_0_tilt')) {
        this.fcal_0_tilt = initObj.fcal_0_tilt
      }
      else {
        this.fcal_0_tilt = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_1_tilt')) {
        this.fcal_1_tilt = initObj.fcal_1_tilt
      }
      else {
        this.fcal_1_tilt = 0.0;
      }
      if (initObj.hasOwnProperty('unlock_count')) {
        this.unlock_count = initObj.unlock_count
      }
      else {
        this.unlock_count = 0;
      }
      if (initObj.hasOwnProperty('hw_version')) {
        this.hw_version = initObj.hw_version
      }
      else {
        this.hw_version = 0;
      }
      if (initObj.hasOwnProperty('fcal_0_curve')) {
        this.fcal_0_curve = initObj.fcal_0_curve
      }
      else {
        this.fcal_0_curve = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_1_curve')) {
        this.fcal_1_curve = initObj.fcal_1_curve
      }
      else {
        this.fcal_1_curve = 0.0;
      }
      if (initObj.hasOwnProperty('accel_dir_x')) {
        this.accel_dir_x = initObj.accel_dir_x
      }
      else {
        this.accel_dir_x = 0.0;
      }
      if (initObj.hasOwnProperty('accel_dir_y')) {
        this.accel_dir_y = initObj.accel_dir_y
      }
      else {
        this.accel_dir_y = 0.0;
      }
      if (initObj.hasOwnProperty('accel_dir_z')) {
        this.accel_dir_z = initObj.accel_dir_z
      }
      else {
        this.accel_dir_z = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_0_gibphase')) {
        this.fcal_0_gibphase = initObj.fcal_0_gibphase
      }
      else {
        this.fcal_0_gibphase = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_1_gibphase')) {
        this.fcal_1_gibphase = initObj.fcal_1_gibphase
      }
      else {
        this.fcal_1_gibphase = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_0_gibmag')) {
        this.fcal_0_gibmag = initObj.fcal_0_gibmag
      }
      else {
        this.fcal_0_gibmag = 0.0;
      }
      if (initObj.hasOwnProperty('fcal_1_gibmag')) {
        this.fcal_1_gibmag = initObj.fcal_1_gibmag
      }
      else {
        this.fcal_1_gibmag = 0.0;
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('faults')) {
        this.faults = initObj.faults
      }
      else {
        this.faults = 0;
      }
      if (initObj.hasOwnProperty('crc32')) {
        this.crc32 = initObj.crc32
      }
      else {
        this.crc32 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DarkRoomOOTX
    // Serialize message field [lighthouse]
    bufferOffset = _serializer.int32(obj.lighthouse, buffer, bufferOffset);
    // Serialize message field [fw_version]
    bufferOffset = _serializer.uint16(obj.fw_version, buffer, bufferOffset);
    // Serialize message field [ID]
    bufferOffset = _serializer.uint32(obj.ID, buffer, bufferOffset);
    // Serialize message field [fcal_0_phase]
    bufferOffset = _serializer.float32(obj.fcal_0_phase, buffer, bufferOffset);
    // Serialize message field [fcal_1_phase]
    bufferOffset = _serializer.float32(obj.fcal_1_phase, buffer, bufferOffset);
    // Serialize message field [fcal_0_tilt]
    bufferOffset = _serializer.float32(obj.fcal_0_tilt, buffer, bufferOffset);
    // Serialize message field [fcal_1_tilt]
    bufferOffset = _serializer.float32(obj.fcal_1_tilt, buffer, bufferOffset);
    // Serialize message field [unlock_count]
    bufferOffset = _serializer.uint8(obj.unlock_count, buffer, bufferOffset);
    // Serialize message field [hw_version]
    bufferOffset = _serializer.uint8(obj.hw_version, buffer, bufferOffset);
    // Serialize message field [fcal_0_curve]
    bufferOffset = _serializer.float32(obj.fcal_0_curve, buffer, bufferOffset);
    // Serialize message field [fcal_1_curve]
    bufferOffset = _serializer.float32(obj.fcal_1_curve, buffer, bufferOffset);
    // Serialize message field [accel_dir_x]
    bufferOffset = _serializer.float32(obj.accel_dir_x, buffer, bufferOffset);
    // Serialize message field [accel_dir_y]
    bufferOffset = _serializer.float32(obj.accel_dir_y, buffer, bufferOffset);
    // Serialize message field [accel_dir_z]
    bufferOffset = _serializer.float32(obj.accel_dir_z, buffer, bufferOffset);
    // Serialize message field [fcal_0_gibphase]
    bufferOffset = _serializer.float32(obj.fcal_0_gibphase, buffer, bufferOffset);
    // Serialize message field [fcal_1_gibphase]
    bufferOffset = _serializer.float32(obj.fcal_1_gibphase, buffer, bufferOffset);
    // Serialize message field [fcal_0_gibmag]
    bufferOffset = _serializer.float32(obj.fcal_0_gibmag, buffer, bufferOffset);
    // Serialize message field [fcal_1_gibmag]
    bufferOffset = _serializer.float32(obj.fcal_1_gibmag, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [faults]
    bufferOffset = _serializer.uint8(obj.faults, buffer, bufferOffset);
    // Serialize message field [crc32]
    bufferOffset = _serializer.uint32(obj.crc32, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DarkRoomOOTX
    let len;
    let data = new DarkRoomOOTX(null);
    // Deserialize message field [lighthouse]
    data.lighthouse = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [fw_version]
    data.fw_version = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ID]
    data.ID = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [fcal_0_phase]
    data.fcal_0_phase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_1_phase]
    data.fcal_1_phase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_0_tilt]
    data.fcal_0_tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_1_tilt]
    data.fcal_1_tilt = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [unlock_count]
    data.unlock_count = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hw_version]
    data.hw_version = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [fcal_0_curve]
    data.fcal_0_curve = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_1_curve]
    data.fcal_1_curve = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_dir_x]
    data.accel_dir_x = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_dir_y]
    data.accel_dir_y = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [accel_dir_z]
    data.accel_dir_z = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_0_gibphase]
    data.fcal_0_gibphase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_1_gibphase]
    data.fcal_1_gibphase = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_0_gibmag]
    data.fcal_0_gibmag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fcal_1_gibmag]
    data.fcal_1_gibmag = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [faults]
    data.faults = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [crc32]
    data.crc32 = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 70;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/DarkRoomOOTX';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6375d27b5383e96f6ed61b6d30596a00';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 lighthouse
    uint16 fw_version
    uint32 ID
    float32 fcal_0_phase
    float32 fcal_1_phase
    float32 fcal_0_tilt
    float32 fcal_1_tilt
    uint8 unlock_count
    uint8 hw_version
    float32 fcal_0_curve
    float32 fcal_1_curve
    float32 accel_dir_x
    float32 accel_dir_y
    float32 accel_dir_z
    float32 fcal_0_gibphase
    float32 fcal_1_gibphase
    float32 fcal_0_gibmag
    float32 fcal_1_gibmag
    uint8 mode
    uint8 faults
    uint32 crc32
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DarkRoomOOTX(null);
    if (msg.lighthouse !== undefined) {
      resolved.lighthouse = msg.lighthouse;
    }
    else {
      resolved.lighthouse = 0
    }

    if (msg.fw_version !== undefined) {
      resolved.fw_version = msg.fw_version;
    }
    else {
      resolved.fw_version = 0
    }

    if (msg.ID !== undefined) {
      resolved.ID = msg.ID;
    }
    else {
      resolved.ID = 0
    }

    if (msg.fcal_0_phase !== undefined) {
      resolved.fcal_0_phase = msg.fcal_0_phase;
    }
    else {
      resolved.fcal_0_phase = 0.0
    }

    if (msg.fcal_1_phase !== undefined) {
      resolved.fcal_1_phase = msg.fcal_1_phase;
    }
    else {
      resolved.fcal_1_phase = 0.0
    }

    if (msg.fcal_0_tilt !== undefined) {
      resolved.fcal_0_tilt = msg.fcal_0_tilt;
    }
    else {
      resolved.fcal_0_tilt = 0.0
    }

    if (msg.fcal_1_tilt !== undefined) {
      resolved.fcal_1_tilt = msg.fcal_1_tilt;
    }
    else {
      resolved.fcal_1_tilt = 0.0
    }

    if (msg.unlock_count !== undefined) {
      resolved.unlock_count = msg.unlock_count;
    }
    else {
      resolved.unlock_count = 0
    }

    if (msg.hw_version !== undefined) {
      resolved.hw_version = msg.hw_version;
    }
    else {
      resolved.hw_version = 0
    }

    if (msg.fcal_0_curve !== undefined) {
      resolved.fcal_0_curve = msg.fcal_0_curve;
    }
    else {
      resolved.fcal_0_curve = 0.0
    }

    if (msg.fcal_1_curve !== undefined) {
      resolved.fcal_1_curve = msg.fcal_1_curve;
    }
    else {
      resolved.fcal_1_curve = 0.0
    }

    if (msg.accel_dir_x !== undefined) {
      resolved.accel_dir_x = msg.accel_dir_x;
    }
    else {
      resolved.accel_dir_x = 0.0
    }

    if (msg.accel_dir_y !== undefined) {
      resolved.accel_dir_y = msg.accel_dir_y;
    }
    else {
      resolved.accel_dir_y = 0.0
    }

    if (msg.accel_dir_z !== undefined) {
      resolved.accel_dir_z = msg.accel_dir_z;
    }
    else {
      resolved.accel_dir_z = 0.0
    }

    if (msg.fcal_0_gibphase !== undefined) {
      resolved.fcal_0_gibphase = msg.fcal_0_gibphase;
    }
    else {
      resolved.fcal_0_gibphase = 0.0
    }

    if (msg.fcal_1_gibphase !== undefined) {
      resolved.fcal_1_gibphase = msg.fcal_1_gibphase;
    }
    else {
      resolved.fcal_1_gibphase = 0.0
    }

    if (msg.fcal_0_gibmag !== undefined) {
      resolved.fcal_0_gibmag = msg.fcal_0_gibmag;
    }
    else {
      resolved.fcal_0_gibmag = 0.0
    }

    if (msg.fcal_1_gibmag !== undefined) {
      resolved.fcal_1_gibmag = msg.fcal_1_gibmag;
    }
    else {
      resolved.fcal_1_gibmag = 0.0
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.faults !== undefined) {
      resolved.faults = msg.faults;
    }
    else {
      resolved.faults = 0
    }

    if (msg.crc32 !== undefined) {
      resolved.crc32 = msg.crc32;
    }
    else {
      resolved.crc32 = 0
    }

    return resolved;
    }
};

module.exports = DarkRoomOOTX;
