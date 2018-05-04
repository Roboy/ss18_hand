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

class Tendon {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roboyID = null;
      this.viaPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('roboyID')) {
        this.roboyID = initObj.roboyID
      }
      else {
        this.roboyID = 0;
      }
      if (initObj.hasOwnProperty('viaPoints')) {
        this.viaPoints = initObj.viaPoints
      }
      else {
        this.viaPoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tendon
    // Serialize message field [roboyID]
    bufferOffset = _serializer.int32(obj.roboyID, buffer, bufferOffset);
    // Serialize message field [viaPoints]
    // Serialize the length for message field [viaPoints]
    bufferOffset = _serializer.uint32(obj.viaPoints.length, buffer, bufferOffset);
    obj.viaPoints.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Vector3.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tendon
    let len;
    let data = new Tendon(null);
    // Deserialize message field [roboyID]
    data.roboyID = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [viaPoints]
    // Deserialize array length for message field [viaPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.viaPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.viaPoints[i] = geometry_msgs.msg.Vector3.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 24 * object.viaPoints.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboy_communication_simulation/Tendon';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6a1def8dc9efa9f1180288df5984e8b7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roboyID
    geometry_msgs/Vector3[] viaPoints
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
    const resolved = new Tendon(null);
    if (msg.roboyID !== undefined) {
      resolved.roboyID = msg.roboyID;
    }
    else {
      resolved.roboyID = 0
    }

    if (msg.viaPoints !== undefined) {
      resolved.viaPoints = new Array(msg.viaPoints.length);
      for (let i = 0; i < resolved.viaPoints.length; ++i) {
        resolved.viaPoints[i] = geometry_msgs.msg.Vector3.Resolve(msg.viaPoints[i]);
      }
    }
    else {
      resolved.viaPoints = []
    }

    return resolved;
    }
};

module.exports = Tendon;
