// Auto-generated. Do not edit!

// (in-package roboy_communication_simulation.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ControllerParameters = require('../msg/ControllerParameters.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class UpdateControllerParametersRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = new ControllerParameters();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateControllerParametersRequest
    // Serialize message field [params]
    bufferOffset = ControllerParameters.serialize(obj.params, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateControllerParametersRequest
    let len;
    let data = new UpdateControllerParametersRequest(null);
    // Deserialize message field [params]
    data.params = ControllerParameters.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ControllerParameters.getMessageSize(object.params);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_simulation/UpdateControllerParametersRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e4fd67049f61290f75902a321cc68078';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    roboy_communication_simulation/ControllerParameters params
    
    ================================================================================
    MSG: roboy_communication_simulation/ControllerParameters
    int32 roboyID
    float64 F_contact
    float64 d_lift
    float64 d_prep
    float64 F_max
    float64 psi_heading
    float64 omega_heading
    float64 v_forward
    float64 v_COM
    float64 k_v
    float64 k_h
    float64[] k_p_theta_left
    float64[] k_p_theta_right
    float64[] k_d_theta_left
    float64[] k_d_theta_right
    float64[] k_p_phi
    float64[] k_d_phi
    float64 k_V
    float64 k_P
    float64 k_Q
    float64 k_omega
    float64 k_M_Fplus
    float64 c_hip_lift
    float64 c_knee_lift
    float64 c_stance_lift
    float64 c_swing_prep
    float64[] theta_groin_0
    float64[] phi_groin_0
    float64 theta_trunk_0
    float64 phi_trunk_0
    float64[] theta_knee
    float64[] theta_ankle
    float64[] d_s
    float64[] d_c
    float64[] v_s
    float64[] v_c
    float32 sim_time
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateControllerParametersRequest(null);
    if (msg.params !== undefined) {
      resolved.params = ControllerParameters.Resolve(msg.params)
    }
    else {
      resolved.params = new ControllerParameters()
    }

    return resolved;
    }
};

class UpdateControllerParametersResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type UpdateControllerParametersResponse
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type UpdateControllerParametersResponse
    let len;
    let data = new UpdateControllerParametersResponse(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'roboy_communication_simulation/UpdateControllerParametersResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new UpdateControllerParametersResponse(null);
    return resolved;
    }
};

module.exports = {
  Request: UpdateControllerParametersRequest,
  Response: UpdateControllerParametersResponse,
  md5sum() { return 'e4fd67049f61290f75902a321cc68078'; },
  datatype() { return 'roboy_communication_simulation/UpdateControllerParameters'; }
};
