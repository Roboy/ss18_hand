// Auto-generated. Do not edit!

// (in-package roboy_communication_control.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ListItemsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name = null;
    }
    else {
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListItemsRequest
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListItemsRequest
    let len;
    let data = new ListItemsRequest(null);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.name.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_control/ListItemsRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c1f3d28f1b044c871e6eff2e9fc3c667';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListItemsRequest(null);
    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    return resolved;
    }
};

class ListItemsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.items = null;
    }
    else {
      if (initObj.hasOwnProperty('items')) {
        this.items = initObj.items
      }
      else {
        this.items = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListItemsResponse
    // Serialize message field [items]
    bufferOffset = _arraySerializer.string(obj.items, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListItemsResponse
    let len;
    let data = new ListItemsResponse(null);
    // Deserialize message field [items]
    data.items = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.items.forEach((val) => {
      length += 4 + val.length;
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_control/ListItemsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37e1a2176c4e23e084db76e25c14b0d8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] items
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListItemsResponse(null);
    if (msg.items !== undefined) {
      resolved.items = msg.items;
    }
    else {
      resolved.items = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListItemsRequest,
  Response: ListItemsResponse,
  md5sum() { return 'f59feb99c2158f8692d1c10f10534d0b'; },
  datatype() { return 'roboy_communication_control/ListItems'; }
};
