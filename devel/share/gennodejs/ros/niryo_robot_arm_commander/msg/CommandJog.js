// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class CommandJog {
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
    // Serializes a message object of type CommandJog
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [shift_values]
    bufferOffset = _arraySerializer.float32(obj.shift_values, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CommandJog
    let len;
    let data = new CommandJog(null);
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
    // Returns string type for a message object
    return 'niryo_robot_arm_commander/CommandJog';
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
    const resolved = new CommandJog(null);
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
CommandJog.Constants = {
  JOINTS_SHIFT: 1,
  POSE_SHIFT: 2,
}

module.exports = CommandJog;
