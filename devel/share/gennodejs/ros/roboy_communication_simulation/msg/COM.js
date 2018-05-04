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

class COM {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.Position = null;
      this.Velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('Position')) {
        this.Position = initObj.Position
      }
      else {
        this.Position = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('Velocity')) {
        this.Velocity = initObj.Velocity
      }
      else {
        this.Velocity = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type COM
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [Position]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.Position, buffer, bufferOffset);
    // Serialize message field [Velocity]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.Velocity, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type COM
    let len;
    let data = new COM(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [Position]
    data.Position = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [Velocity]
    data.Velocity = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/COM';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3b1b5402540d516eb0a6ed06790735e7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    geometry_msgs/Point Position
    geometry_msgs/Point Velocity
    
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
    const resolved = new COM(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.Position !== undefined) {
      resolved.Position = geometry_msgs.msg.Point.Resolve(msg.Position)
    }
    else {
      resolved.Position = new geometry_msgs.msg.Point()
    }

    if (msg.Velocity !== undefined) {
      resolved.Velocity = geometry_msgs.msg.Point.Resolve(msg.Velocity)
    }
    else {
      resolved.Velocity = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = COM;
