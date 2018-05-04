// Auto-generated. Do not edit!

// (in-package roboy_communication_simulation.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class IMU {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.link = null;
      this.lin_accel_world = null;
      this.ang_vel_world = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('link')) {
        this.link = initObj.link
      }
      else {
        this.link = '';
      }
      if (initObj.hasOwnProperty('lin_accel_world')) {
        this.lin_accel_world = initObj.lin_accel_world
      }
      else {
        this.lin_accel_world = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('ang_vel_world')) {
        this.ang_vel_world = initObj.ang_vel_world
      }
      else {
        this.ang_vel_world = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IMU
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [link]
    bufferOffset = _serializer.string(obj.link, buffer, bufferOffset);
    // Serialize message field [lin_accel_world]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.lin_accel_world, buffer, bufferOffset);
    // Serialize message field [ang_vel_world]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.ang_vel_world, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IMU
    let len;
    let data = new IMU(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [link]
    data.link = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lin_accel_world]
    data.lin_accel_world = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [ang_vel_world]
    data.ang_vel_world = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.link.length;
    return length + 56;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/IMU';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '22dc800153ea9dacdafa02e56ca68a77';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    string link
    geometry_msgs/Point lin_accel_world
    geometry_msgs/Point ang_vel_world
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
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
    const resolved = new IMU(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.link !== undefined) {
      resolved.link = msg.link;
    }
    else {
      resolved.link = ''
    }

    if (msg.lin_accel_world !== undefined) {
      resolved.lin_accel_world = geometry_msgs.msg.Point.Resolve(msg.lin_accel_world)
    }
    else {
      resolved.lin_accel_world = new geometry_msgs.msg.Point()
    }

    if (msg.ang_vel_world !== undefined) {
      resolved.ang_vel_world = geometry_msgs.msg.Point.Resolve(msg.ang_vel_world)
    }
    else {
      resolved.ang_vel_world = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = IMU;
