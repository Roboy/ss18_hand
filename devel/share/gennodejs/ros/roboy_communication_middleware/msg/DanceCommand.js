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

class DanceCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sensorID = null;
      this.pos = null;
    }
    else {
      if (initObj.hasOwnProperty('sensorID')) {
        this.sensorID = initObj.sensorID
      }
      else {
        this.sensorID = 0;
      }
      if (initObj.hasOwnProperty('pos')) {
        this.pos = initObj.pos
      }
      else {
        this.pos = new geometry_msgs.msg.Vector3();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DanceCommand
    // Serialize message field [sensorID]
    bufferOffset = _serializer.int32(obj.sensorID, buffer, bufferOffset);
    // Serialize message field [pos]
    bufferOffset = geometry_msgs.msg.Vector3.serialize(obj.pos, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DanceCommand
    let len;
    let data = new DanceCommand(null);
    // Deserialize message field [sensorID]
    data.sensorID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [pos]
    data.pos = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_middleware/DanceCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55091eb173d09b78b59c0e3c8cb90d21';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 sensorID
    geometry_msgs/Vector3 pos
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
    const resolved = new DanceCommand(null);
    if (msg.sensorID !== undefined) {
      resolved.sensorID = msg.sensorID;
    }
    else {
      resolved.sensorID = 0
    }

    if (msg.pos !== undefined) {
      resolved.pos = geometry_msgs.msg.Vector3.Resolve(msg.pos)
    }
    else {
      resolved.pos = new geometry_msgs.msg.Vector3()
    }

    return resolved;
    }
};

module.exports = DanceCommand;
