// Auto-generated. Do not edit!

// (in-package can_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class StepperCmdRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.motors_id = null;
      this.params = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('motors_id')) {
        this.motors_id = initObj.motors_id
      }
      else {
        this.motors_id = [];
      }
      if (initObj.hasOwnProperty('params')) {
        this.params = initObj.params
      }
      else {
        this.params = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperCmdRequest
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [motors_id]
    bufferOffset = _arraySerializer.uint8(obj.motors_id, buffer, bufferOffset, null);
    // Serialize message field [params]
    bufferOffset = _arraySerializer.int32(obj.params, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperCmdRequest
    let len;
    let data = new StepperCmdRequest(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motors_id]
    data.motors_id = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    // Deserialize message field [params]
    data.params = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.motors_id.length;
    length += 4 * object.params.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'can_driver/StepperCmdRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '098d489d0a8540ad91aeb8ece8a8e35e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 cmd_type
    uint8 CMD_TYPE_SYNCHRONIZE=5
    uint8 CMD_TYPE_RELATIVE_MOVE=6
    uint8 CMD_TYPE_MAX_EFFORT=7
    uint8 CMD_TYPE_MICRO_STEPS=8
    uint8 CMD_TYPE_POSITION_OFFSET=9
    uint8 CMD_TYPE_CALIBRATION=10
    
    uint8[] motors_id
    int32[] params
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperCmdRequest(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.motors_id !== undefined) {
      resolved.motors_id = msg.motors_id;
    }
    else {
      resolved.motors_id = []
    }

    if (msg.params !== undefined) {
      resolved.params = msg.params;
    }
    else {
      resolved.params = []
    }

    return resolved;
    }
};

// Constants for message
StepperCmdRequest.Constants = {
  CMD_TYPE_SYNCHRONIZE: 5,
  CMD_TYPE_RELATIVE_MOVE: 6,
  CMD_TYPE_MAX_EFFORT: 7,
  CMD_TYPE_MICRO_STEPS: 8,
  CMD_TYPE_POSITION_OFFSET: 9,
  CMD_TYPE_CALIBRATION: 10,
}

class StepperCmdResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperCmdResponse
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperCmdResponse
    let len;
    let data = new StepperCmdResponse(null);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'can_driver/StepperCmdResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'eb13ac1f1354ccecb7941ee8fa2192e8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new StepperCmdResponse(null);
    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: StepperCmdRequest,
  Response: StepperCmdResponse,
  md5sum() { return 'ba19744f08da796611d9a0fb1a26974e'; },
  datatype() { return 'can_driver/StepperCmd'; }
};
