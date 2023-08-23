// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let JointLimits = require('../msg/JointLimits.js');

//-----------------------------------------------------------

class GetJointLimitsRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointLimitsRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointLimitsRequest
    let len;
    let data = new GetJointLimitsRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetJointLimitsRequest';
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
    const resolved = new GetJointLimitsRequest(null);
    return resolved;
    }
};

class GetJointLimitsResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_limits = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_limits')) {
        this.joint_limits = initObj.joint_limits
      }
      else {
        this.joint_limits = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetJointLimitsResponse
    // Serialize message field [joint_limits]
    // Serialize the length for message field [joint_limits]
    bufferOffset = _serializer.uint32(obj.joint_limits.length, buffer, bufferOffset);
    obj.joint_limits.forEach((val) => {
      bufferOffset = JointLimits.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetJointLimitsResponse
    let len;
    let data = new GetJointLimitsResponse(null);
    // Deserialize message field [joint_limits]
    // Deserialize array length for message field [joint_limits]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_limits = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_limits[i] = JointLimits.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_limits.forEach((val) => {
      length += JointLimits.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetJointLimitsResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ba7b9bef3b3cda7f3761fd7553bd662';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_arm_commander/JointLimits[] joint_limits
    
    ================================================================================
    MSG: niryo_robot_arm_commander/JointLimits
    string name
    float64 min
    float64 max
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetJointLimitsResponse(null);
    if (msg.joint_limits !== undefined) {
      resolved.joint_limits = new Array(msg.joint_limits.length);
      for (let i = 0; i < resolved.joint_limits.length; ++i) {
        resolved.joint_limits[i] = JointLimits.Resolve(msg.joint_limits[i]);
      }
    }
    else {
      resolved.joint_limits = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetJointLimitsRequest,
  Response: GetJointLimitsResponse,
  md5sum() { return '8ba7b9bef3b3cda7f3761fd7553bd662'; },
  datatype() { return 'niryo_robot_arm_commander/GetJointLimits'; }
};
