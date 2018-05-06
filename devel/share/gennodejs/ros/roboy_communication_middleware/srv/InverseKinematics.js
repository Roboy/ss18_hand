// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class InverseKinematicsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.targetPosition = null;
      this.ankle_left = null;
      this.ankle_right_sensor = null;
      this.lighthouse_sensor_id = null;
      this.initial_angles = null;
      this.inspect = null;
      this.visualize_initial = null;
      this.visualize_result = null;
    }
    else {
      if (initObj.hasOwnProperty('targetPosition')) {
        this.targetPosition = initObj.targetPosition
      }
      else {
        this.targetPosition = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ankle_left')) {
        this.ankle_left = initObj.ankle_left
      }
      else {
        this.ankle_left = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('ankle_right_sensor')) {
        this.ankle_right_sensor = initObj.ankle_right_sensor
      }
      else {
        this.ankle_right_sensor = new geometry_msgs.msg.Vector3();
      }
      if (initObj.hasOwnProperty('lighthouse_sensor_id')) {
        this.lighthouse_sensor_id = initObj.lighthouse_sensor_id
      }
      else {
        this.lighthouse_sensor_id = 0;
      }
      if (initObj.hasOwnProperty('initial_angles')) {
        this.initial_angles = initObj.initial_angles
      }
      else {
        this.initial_angles = [];
      }
      if (initObj.hasOwnProperty('inspect')) {
        this.inspect = initObj.inspect
      }
      else {
        this.inspect = false;
      }
      if (initObj.hasOwnProperty('visualize_initial')) {
        this.visualize_initial = initObj.visualize_initial
      }
      else {
        this.visualize_initial = false;
      }
      if (initObj.hasOwnProperty('visualize_result')) {
        this.visualize_result = initObj.visualize_result
      }
      else {
        this.visualize_result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsRequest
    // Serialize message field [targetPosition]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.targetPosition, buffer, bufferOffset);
    // Serialize message field [ankle_left]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ankle_left, buffer, bufferOffset);
    // Serialize message field [ankle_right_sensor]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.ankle_right_sensor, buffer, bufferOffset);
    // Serialize message field [lighthouse_sensor_id]
    bufferOffset = _serializer.int32(obj.lighthouse_sensor_id, buffer, bufferOffset);
    // Serialize message field [initial_angles]
    bufferOffset = _arraySerializer.float64(obj.initial_angles, buffer, bufferOffset, null);
    // Serialize message field [inspect]
    bufferOffset = _serializer.bool(obj.inspect, buffer, bufferOffset);
    // Serialize message field [visualize_initial]
    bufferOffset = _serializer.bool(obj.visualize_initial, buffer, bufferOffset);
    // Serialize message field [visualize_result]
    bufferOffset = _serializer.bool(obj.visualize_result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsRequest
    let len;
    let data = new InverseKinematicsRequest(null);
    // Deserialize message field [targetPosition]
    data.targetPosition = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ankle_left]
    data.ankle_left = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [ankle_right_sensor]
    data.ankle_right_sensor = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    // Deserialize message field [lighthouse_sensor_id]
    data.lighthouse_sensor_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [initial_angles]
    data.initial_angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [inspect]
    data.inspect = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [visualize_initial]
    data.visualize_initial = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [visualize_result]
    data.visualize_result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.initial_angles.length;
    return length + 83;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/InverseKinematicsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '198b67e76bcb5cc0558b3fa4f24b2bc2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    geometry_msgs/Vector3 targetPosition
    
    geometry_msgs/Vector3 ankle_left
    
    geometry_msgs/Vector3 ankle_right_sensor
    
    
    int32 lighthouse_sensor_id
    
    float64[] initial_angles
    
    bool inspect
    bool visualize_initial
    bool visualize_result
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsRequest(null);
    if (msg.targetPosition !== undefined) {
      resolved.targetPosition = geometry_msgs.msg.Vector3.Resolve(msg.targetPosition)
    }
    else {
      resolved.targetPosition = new geometry_msgs.msg.Vector3()
    }

    if (msg.ankle_left !== undefined) {
      resolved.ankle_left = geometry_msgs.msg.Vector3.Resolve(msg.ankle_left)
    }
    else {
      resolved.ankle_left = new geometry_msgs.msg.Vector3()
    }

    if (msg.ankle_right_sensor !== undefined) {
      resolved.ankle_right_sensor = geometry_msgs.msg.Vector3.Resolve(msg.ankle_right_sensor)
    }
    else {
      resolved.ankle_right_sensor = new geometry_msgs.msg.Vector3()
    }

    if (msg.lighthouse_sensor_id !== undefined) {
      resolved.lighthouse_sensor_id = msg.lighthouse_sensor_id;
    }
    else {
      resolved.lighthouse_sensor_id = 0
    }

    if (msg.initial_angles !== undefined) {
      resolved.initial_angles = msg.initial_angles;
    }
    else {
      resolved.initial_angles = []
    }

    if (msg.inspect !== undefined) {
      resolved.inspect = msg.inspect;
    }
    else {
      resolved.inspect = false
    }

    if (msg.visualize_initial !== undefined) {
      resolved.visualize_initial = msg.visualize_initial;
    }
    else {
      resolved.visualize_initial = false
    }

    if (msg.visualize_result !== undefined) {
      resolved.visualize_result = msg.visualize_result;
    }
    else {
      resolved.visualize_result = false
    }

    return resolved;
    }
};

class InverseKinematicsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.angles = null;
      this.resultPosition = null;
    }
    else {
      if (initObj.hasOwnProperty('angles')) {
        this.angles = initObj.angles
      }
      else {
        this.angles = [];
      }
      if (initObj.hasOwnProperty('resultPosition')) {
        this.resultPosition = initObj.resultPosition
      }
      else {
        this.resultPosition = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type InverseKinematicsResponse
    // Serialize message field [angles]
    bufferOffset = _arraySerializer.float64(obj.angles, buffer, bufferOffset, null);
    // Serialize message field [resultPosition]
    // Serialize the length for message field [resultPosition]
    bufferOffset = _serializer.uint32(obj.resultPosition.length, buffer, bufferOffset);
    obj.resultPosition.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type InverseKinematicsResponse
    let len;
    let data = new InverseKinematicsResponse(null);
    // Deserialize message field [angles]
    data.angles = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [resultPosition]
    // Deserialize array length for message field [resultPosition]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.resultPosition = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.resultPosition[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.angles.length;
    length += 24 * object.resultPosition.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_middleware/InverseKinematicsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a673a2632a816934d2c55de3a9c1d219';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    float64[] angles
    
    geometry_msgs/Vector3[] resultPosition
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new InverseKinematicsResponse(null);
    if (msg.angles !== undefined) {
      resolved.angles = msg.angles;
    }
    else {
      resolved.angles = []
    }

    if (msg.resultPosition !== undefined) {
      resolved.resultPosition = new Array(msg.resultPosition.length);
      for (let i = 0; i < resolved.resultPosition.length; ++i) {
        resolved.resultPosition[i] = geometry_msgs.msg.Vector3.Resolve(msg.resultPosition[i]);
      }
    }
    else {
      resolved.resultPosition = []
    }

    return resolved;
    }
};

module.exports = {
  Request: InverseKinematicsRequest,
  Response: InverseKinematicsResponse,
  md5sum() { return '7ed4cab343a38215cfd78eb6ab4e3999'; },
  datatype() { return 'roboy_communication_middleware/InverseKinematics'; }
};
