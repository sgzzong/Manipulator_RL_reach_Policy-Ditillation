// Auto-generated. Do not edit!

// (in-package tools_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Tool {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.motor_type = null;
      this.position = null;
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('motor_type')) {
        this.motor_type = initObj.motor_type
      }
      else {
        this.motor_type = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Tool
    // Serialize message field [id]
    bufferOffset = _serializer.int8(obj.id, buffer, bufferOffset);
    // Serialize message field [motor_type]
    bufferOffset = _serializer.int8(obj.motor_type, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.int16(obj.position, buffer, bufferOffset);
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Tool
    let len;
    let data = new Tool(null);
    // Deserialize message field [id]
    data.id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [motor_type]
    data.motor_type = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tools_interface/Tool';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '830c50232809d26b16dfe357c84d738a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Tool(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.motor_type !== undefined) {
      resolved.motor_type = msg.motor_type;
    }
    else {
      resolved.motor_type = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
Tool.Constants = {
  NO_MOTOR: 0,
  STEPPER: 1,
  XL430: 2,
  XL320: 3,
  XL330: 4,
  XC430: 5,
  XM430: 6,
  FAKE_DXL_MOTOR: 20,
  TOOL_STATE_PING_OK: 1,
  TOOL_STATE_PING_ERROR: 2,
  TOOL_STATE_WRONG_ID: 3,
  TOOL_STATE_TIMEOUT: 4,
  GRIPPER_STATE_OPEN: 16,
  GRIPPER_STATE_CLOSE: 17,
  VACUUM_PUMP_STATE_PULLED: 32,
  VACUUM_PUMP_STATE_PUSHED: 33,
}

module.exports = Tool;
