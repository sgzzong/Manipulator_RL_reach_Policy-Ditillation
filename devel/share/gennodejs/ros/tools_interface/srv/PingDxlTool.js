// Auto-generated. Do not edit!

// (in-package tools_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let Tool = require('../msg/Tool.js');

//-----------------------------------------------------------

class PingDxlToolRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingDxlToolRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingDxlToolRequest
    let len;
    let data = new PingDxlToolRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tools_interface/PingDxlToolRequest';
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
    const resolved = new PingDxlToolRequest(null);
    return resolved;
    }
};

class PingDxlToolResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
      this.tool = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
      if (initObj.hasOwnProperty('tool')) {
        this.tool = initObj.tool
      }
      else {
        this.tool = new Tool();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PingDxlToolResponse
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    // Serialize message field [tool]
    bufferOffset = Tool.serialize(obj.tool, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PingDxlToolResponse
    let len;
    let data = new PingDxlToolResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [tool]
    data.tool = Tool.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tools_interface/PingDxlToolResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '79430720584434ee5ae66073bc65cdba';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 state
    tools_interface/Tool tool
    
    
    ================================================================================
    MSG: tools_interface/Tool
    int8 id
    
    int8 NO_MOTOR = 0
    int8 STEPPER = 1
    int8 XL430 = 2
    int8 XL320 = 3
    int8 XL330 = 4
    int8 XC430 = 5
    int8 XM430 = 6
    int8 FAKE_DXL_MOTOR = 20
    
    int8 motor_type
    
    int16 position
    
    int8 TOOL_STATE_PING_OK       = 1
    int8 TOOL_STATE_PING_ERROR    = 2
    int8 TOOL_STATE_WRONG_ID      = 3
    int8 TOOL_STATE_TIMEOUT       = 4
    
    int8 GRIPPER_STATE_OPEN       = 16
    int8 GRIPPER_STATE_CLOSE      = 17
    
    int8 VACUUM_PUMP_STATE_PULLED = 32
    int8 VACUUM_PUMP_STATE_PUSHED = 33
    
    int8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PingDxlToolResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    if (msg.tool !== undefined) {
      resolved.tool = Tool.Resolve(msg.tool)
    }
    else {
      resolved.tool = new Tool()
    }

    return resolved;
    }
};

module.exports = {
  Request: PingDxlToolRequest,
  Response: PingDxlToolResponse,
  md5sum() { return '79430720584434ee5ae66073bc65cdba'; },
  datatype() { return 'tools_interface/PingDxlTool'; }
};
