// Auto-generated. Do not edit!

// (in-package niryo_robot_tools_commander.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ToolCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd_type = null;
      this.tool_id = null;
      this.speed = null;
      this.max_torque_percentage = null;
      this.hold_torque_percentage = null;
      this.activate = null;
      this.gpio = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd_type')) {
        this.cmd_type = initObj.cmd_type
      }
      else {
        this.cmd_type = 0;
      }
      if (initObj.hasOwnProperty('tool_id')) {
        this.tool_id = initObj.tool_id
      }
      else {
        this.tool_id = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('max_torque_percentage')) {
        this.max_torque_percentage = initObj.max_torque_percentage
      }
      else {
        this.max_torque_percentage = 0;
      }
      if (initObj.hasOwnProperty('hold_torque_percentage')) {
        this.hold_torque_percentage = initObj.hold_torque_percentage
      }
      else {
        this.hold_torque_percentage = 0;
      }
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
      if (initObj.hasOwnProperty('gpio')) {
        this.gpio = initObj.gpio
      }
      else {
        this.gpio = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolCommand
    // Serialize message field [cmd_type]
    bufferOffset = _serializer.uint8(obj.cmd_type, buffer, bufferOffset);
    // Serialize message field [tool_id]
    bufferOffset = _serializer.int8(obj.tool_id, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    // Serialize message field [max_torque_percentage]
    bufferOffset = _serializer.uint8(obj.max_torque_percentage, buffer, bufferOffset);
    // Serialize message field [hold_torque_percentage]
    bufferOffset = _serializer.uint8(obj.hold_torque_percentage, buffer, bufferOffset);
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    // Serialize message field [gpio]
    bufferOffset = _serializer.string(obj.gpio, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolCommand
    let len;
    let data = new ToolCommand(null);
    // Deserialize message field [cmd_type]
    data.cmd_type = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [tool_id]
    data.tool_id = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [max_torque_percentage]
    data.max_torque_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [hold_torque_percentage]
    data.hold_torque_percentage = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [gpio]
    data.gpio = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.gpio);
    return length + 11;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_tools_commander/ToolCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e9d67503aca2a9d01b00faeb26e2fad7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Gripper
    int8 OPEN_GRIPPER = 1
    int8 CLOSE_GRIPPER = 2
    
    # Vacuump pump
    int8 PULL_AIR_VACUUM_PUMP = 10
    int8 PUSH_AIR_VACUUM_PUMP = 11
    
    # Tools controlled by digital I/Os
    int8 SETUP_DIGITAL_IO = 20
    int8 ACTIVATE_DIGITAL_IO = 21
    int8 DEACTIVATE_DIGITAL_IO = 22
    
    uint8 cmd_type
    
    # Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30
    int8 tool_id
    
    # if gripper Ned1/One
    uint16 speed
    
    # if gripper Ned2
    uint8 max_torque_percentage
    uint8 hold_torque_percentage
    
    # if vacuum pump or electromagnet grove
    bool activate
    
    # if tool is set by digital outputs (electromagnet)
    string gpio
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolCommand(null);
    if (msg.cmd_type !== undefined) {
      resolved.cmd_type = msg.cmd_type;
    }
    else {
      resolved.cmd_type = 0
    }

    if (msg.tool_id !== undefined) {
      resolved.tool_id = msg.tool_id;
    }
    else {
      resolved.tool_id = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.max_torque_percentage !== undefined) {
      resolved.max_torque_percentage = msg.max_torque_percentage;
    }
    else {
      resolved.max_torque_percentage = 0
    }

    if (msg.hold_torque_percentage !== undefined) {
      resolved.hold_torque_percentage = msg.hold_torque_percentage;
    }
    else {
      resolved.hold_torque_percentage = 0
    }

    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    if (msg.gpio !== undefined) {
      resolved.gpio = msg.gpio;
    }
    else {
      resolved.gpio = ''
    }

    return resolved;
    }
};

// Constants for message
ToolCommand.Constants = {
  OPEN_GRIPPER: 1,
  CLOSE_GRIPPER: 2,
  PULL_AIR_VACUUM_PUMP: 10,
  PUSH_AIR_VACUUM_PUMP: 11,
  SETUP_DIGITAL_IO: 20,
  ACTIVATE_DIGITAL_IO: 21,
  DEACTIVATE_DIGITAL_IO: 22,
}

module.exports = ToolCommand;
