// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class MotorCalibrationServiceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.fpga = null;
      this.motor = null;
      this.degree = null;
      this.timeout = null;
      this.numberOfDataPoints = null;
      this.displacement_min = null;
      this.displacement_max = null;
    }
    else {
      if (initObj.hasOwnProperty('fpga')) {
        this.fpga = initObj.fpga
      }
      else {
        this.fpga = 0;
      }
      if (initObj.hasOwnProperty('motor')) {
        this.motor = initObj.motor
      }
      else {
        this.motor = 0;
      }
      if (initObj.hasOwnProperty('degree')) {
        this.degree = initObj.degree
      }
      else {
        this.degree = 0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = 0;
      }
      if (initObj.hasOwnProperty('numberOfDataPoints')) {
        this.numberOfDataPoints = initObj.numberOfDataPoints
      }
      else {
        this.numberOfDataPoints = 0;
      }
      if (initObj.hasOwnProperty('displacement_min')) {
        this.displacement_min = initObj.displacement_min
      }
      else {
        this.displacement_min = 0;
      }
      if (initObj.hasOwnProperty('displacement_max')) {
        this.displacement_max = initObj.displacement_max
      }
      else {
        this.displacement_max = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCalibrationServiceRequest
    // Serialize message field [fpga]
    bufferOffset = _serializer.int32(obj.fpga, buffer, bufferOffset);
    // Serialize message field [motor]
    bufferOffset = _serializer.int32(obj.motor, buffer, bufferOffset);
    // Serialize message field [degree]
    bufferOffset = _serializer.int32(obj.degree, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.int32(obj.timeout, buffer, bufferOffset);
    // Serialize message field [numberOfDataPoints]
    bufferOffset = _serializer.int32(obj.numberOfDataPoints, buffer, bufferOffset);
    // Serialize message field [displacement_min]
    bufferOffset = _serializer.int32(obj.displacement_min, buffer, bufferOffset);
    // Serialize message field [displacement_max]
    bufferOffset = _serializer.int32(obj.displacement_max, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCalibrationServiceRequest
    let len;
    let data = new MotorCalibrationServiceRequest(null);
    // Deserialize message field [fpga]
    data.fpga = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [motor]
    data.motor = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [degree]
    data.degree = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [numberOfDataPoints]
    data.numberOfDataPoints = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [displacement_min]
    data.displacement_min = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [displacement_max]
    data.displacement_max = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/MotorCalibrationServiceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9f4930777a486870f541f84373cd36ea';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 fpga
    int32 motor
    int32 degree
    int32 timeout
    int32 numberOfDataPoints
    int32 displacement_min
    int32 displacement_max
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCalibrationServiceRequest(null);
    if (msg.fpga !== undefined) {
      resolved.fpga = msg.fpga;
    }
    else {
      resolved.fpga = 0
    }

    if (msg.motor !== undefined) {
      resolved.motor = msg.motor;
    }
    else {
      resolved.motor = 0
    }

    if (msg.degree !== undefined) {
      resolved.degree = msg.degree;
    }
    else {
      resolved.degree = 0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = 0
    }

    if (msg.numberOfDataPoints !== undefined) {
      resolved.numberOfDataPoints = msg.numberOfDataPoints;
    }
    else {
      resolved.numberOfDataPoints = 0
    }

    if (msg.displacement_min !== undefined) {
      resolved.displacement_min = msg.displacement_min;
    }
    else {
      resolved.displacement_min = 0
    }

    if (msg.displacement_max !== undefined) {
      resolved.displacement_max = msg.displacement_max;
    }
    else {
      resolved.displacement_max = 0
    }

    return resolved;
    }
};

class MotorCalibrationServiceResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.estimated_spring_parameters = null;
      this.load = null;
      this.displacement = null;
    }
    else {
      if (initObj.hasOwnProperty('estimated_spring_parameters')) {
        this.estimated_spring_parameters = initObj.estimated_spring_parameters
      }
      else {
        this.estimated_spring_parameters = [];
      }
      if (initObj.hasOwnProperty('load')) {
        this.load = initObj.load
      }
      else {
        this.load = [];
      }
      if (initObj.hasOwnProperty('displacement')) {
        this.displacement = initObj.displacement
      }
      else {
        this.displacement = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorCalibrationServiceResponse
    // Serialize message field [estimated_spring_parameters]
    bufferOffset = _arraySerializer.float32(obj.estimated_spring_parameters, buffer, bufferOffset, null);
    // Serialize message field [load]
    bufferOffset = _arraySerializer.float64(obj.load, buffer, bufferOffset, null);
    // Serialize message field [displacement]
    bufferOffset = _arraySerializer.float64(obj.displacement, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorCalibrationServiceResponse
    let len;
    let data = new MotorCalibrationServiceResponse(null);
    // Deserialize message field [estimated_spring_parameters]
    data.estimated_spring_parameters = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [load]
    data.load = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [displacement]
    data.displacement = _arrayDeserializer.float64(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.estimated_spring_parameters.length;
    length += 8 * object.load.length;
    length += 8 * object.displacement.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/MotorCalibrationServiceResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cbaac264566b037dc730e8ef15ebdc8f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] estimated_spring_parameters
    float64[] load
    float64[] displacement
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MotorCalibrationServiceResponse(null);
    if (msg.estimated_spring_parameters !== undefined) {
      resolved.estimated_spring_parameters = msg.estimated_spring_parameters;
    }
    else {
      resolved.estimated_spring_parameters = []
    }

    if (msg.load !== undefined) {
      resolved.load = msg.load;
    }
    else {
      resolved.load = []
    }

    if (msg.displacement !== undefined) {
      resolved.displacement = msg.displacement;
    }
    else {
      resolved.displacement = []
    }

    return resolved;
    }
};

module.exports = {
  Request: MotorCalibrationServiceRequest,
  Response: MotorCalibrationServiceResponse,
  md5sum() { return '78e9593b5280af42e349c156e06528a2'; },
  datatype() { return 'roboy_communication_middleware/MotorCalibrationService'; }
};
