// Auto-generated. Do not edit!

// (in-package roboy_communication_middleware.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class ArucoPose {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pose = null;
      this.center = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = [];
      }
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = [];
      }
      if (initObj.hasOwnProperty('center')) {
        this.center = initObj.center
      }
      else {
        this.center = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArucoPose
    // Serialize message field [id]
    bufferOffset = _arraySerializer.int32(obj.id, buffer, bufferOffset, null);
    // Serialize message field [pose]
    // Serialize the length for message field [pose]
    bufferOffset = _serializer.uint32(obj.pose.length, buffer, bufferOffset);
    obj.pose.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [center]
    // Serialize the length for message field [center]
    bufferOffset = _serializer.uint32(obj.center.length, buffer, bufferOffset);
    obj.center.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArucoPose
    let len;
    let data = new ArucoPose(null);
    // Deserialize message field [id]
    data.id = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [pose]
    // Deserialize array length for message field [pose]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pose = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pose[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [center]
    // Deserialize array length for message field [center]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.center = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.center[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.id.length;
    length += 56 * object.pose.length;
    length += 24 * object.center.length;
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/ArucoPose';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '45e145401ac244f631628fd584257bce';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] id
    # pose of the marker in 3d space
    geometry_msgs/Pose[] pose
    # center of the marker in camera plane in pixels
    geometry_msgs/Point[] center
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArucoPose(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = []
    }

    if (msg.pose !== undefined) {
      resolved.pose = new Array(msg.pose.length);
      for (let i = 0; i < resolved.pose.length; ++i) {
        resolved.pose[i] = geometry_msgs.msg.Pose.Resolve(msg.pose[i]);
      }
    }
    else {
      resolved.pose = []
    }

    if (msg.center !== undefined) {
      resolved.center = new Array(msg.center.length);
      for (let i = 0; i < resolved.center.length; ++i) {
        resolved.center[i] = geometry_msgs.msg.Point.Resolve(msg.center[i]);
      }
    }
    else {
      resolved.center = []
    }

    return resolved;
    }
};

module.exports = ArucoPose;
