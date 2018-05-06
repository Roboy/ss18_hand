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

class ForceTorque {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.leg = null;
      this.joint = null;
      this.force = null;
      this.torque = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('leg')) {
        this.leg = initObj.leg
      }
      else {
        this.leg = 0;
      }
      if (initObj.hasOwnProperty('joint')) {
        this.joint = initObj.joint
      }
      else {
        this.joint = '';
      }
      if (initObj.hasOwnProperty('force')) {
        this.force = initObj.force
      }
      else {
        this.force = new geometry_msgs.msg.Point();
      }
      if (initObj.hasOwnProperty('torque')) {
        this.torque = initObj.torque
      }
      else {
        this.torque = new geometry_msgs.msg.Point();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ForceTorque
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [leg]
    bufferOffset = _serializer.int32(obj.leg, buffer, bufferOffset);
    // Serialize message field [joint]
    bufferOffset = _serializer.string(obj.joint, buffer, bufferOffset);
    // Serialize message field [force]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.force, buffer, bufferOffset);
    // Serialize message field [torque]
    bufferOffset = geometry_msgs.msg.Point.serialize(obj.torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ForceTorque
    let len;
    let data = new ForceTorque(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [leg]
    data.leg = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joint]
    data.joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [force]
    data.force = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    // Deserialize message field [torque]
    data.torque = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.joint.length;
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/ForceTorque';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8c24d9d631cda8fce738e80ce9bd535d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    int32 leg
    string joint
    geometry_msgs/Point force
    geometry_msgs/Point torque
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
    const resolved = new ForceTorque(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.leg !== undefined) {
      resolved.leg = msg.leg;
    }
    else {
      resolved.leg = 0
    }

    if (msg.joint !== undefined) {
      resolved.joint = msg.joint;
    }
    else {
      resolved.joint = ''
    }

    if (msg.force !== undefined) {
      resolved.force = geometry_msgs.msg.Point.Resolve(msg.force)
    }
    else {
      resolved.force = new geometry_msgs.msg.Point()
    }

    if (msg.torque !== undefined) {
      resolved.torque = geometry_msgs.msg.Point.Resolve(msg.torque)
    }
    else {
      resolved.torque = new geometry_msgs.msg.Point()
    }

    return resolved;
    }
};

module.exports = ForceTorque;
