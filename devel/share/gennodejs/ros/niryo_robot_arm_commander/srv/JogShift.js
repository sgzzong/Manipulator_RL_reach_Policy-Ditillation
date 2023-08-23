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


//-----------------------------------------------------------

class JogShiftRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.shift_values = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('shift_values')) {
        this.shift_values = initObj.shift_values
      }
      else {
        this.shift_values = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JogShiftRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [shift_values]
    bufferOffset = _arraySerializer.float32(obj.shift_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JogShiftRequest
    let len;
    let data = new JogShiftRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [shift_values]
    data.shift_values = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.shift_values.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/JogShiftRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '982e671b205d513ea5a6ebe02f6d0ba8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 JOINTS_SHIFT = 1
    int32 POSE_SHIFT = 2
    
    int32 cmd
    
    float32[] shift_values
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JogShiftRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.shift_values !== undefined) {
      resolved.shift_values = msg.shift_values;
    }
    else {
      resolved.shift_values = []
    }

    return resolved;
    }
};

// Constants for message
JogShiftRequest.Constants = {
  JOINTS_SHIFT: 1,
  POSE_SHIFT: 2,
}

class JogShiftResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JogShiftResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JogShiftResponse
    let len;
    let data = new JogShiftResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/JogShiftResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JogShiftResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: JogShiftRequest,
  Response: JogShiftResponse,
  md5sum() { return '63bb8af5051d5e683358a7466dbe2c2c'; },
  datatype() { return 'niryo_robot_arm_commander/JogShift'; }
};
