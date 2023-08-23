// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProgramIsRunning {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.program_is_running = null;
      this.last_execution_status = null;
      this.last_execution_msg = null;
    }
    else {
      if (initObj.hasOwnProperty('program_is_running')) {
        this.program_is_running = initObj.program_is_running
      }
      else {
        this.program_is_running = false;
      }
      if (initObj.hasOwnProperty('last_execution_status')) {
        this.last_execution_status = initObj.last_execution_status
      }
      else {
        this.last_execution_status = 0;
      }
      if (initObj.hasOwnProperty('last_execution_msg')) {
        this.last_execution_msg = initObj.last_execution_msg
      }
      else {
        this.last_execution_msg = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProgramIsRunning
    // Serialize message field [program_is_running]
    bufferOffset = _serializer.bool(obj.program_is_running, buffer, bufferOffset);
    // Serialize message field [last_execution_status]
    bufferOffset = _serializer.int8(obj.last_execution_status, buffer, bufferOffset);
    // Serialize message field [last_execution_msg]
    bufferOffset = _serializer.string(obj.last_execution_msg, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProgramIsRunning
    let len;
    let data = new ProgramIsRunning(null);
    // Deserialize message field [program_is_running]
    data.program_is_running = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [last_execution_status]
    data.last_execution_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [last_execution_msg]
    data.last_execution_msg = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.last_execution_msg);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_programs_manager/ProgramIsRunning';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66c2fadf0a0e8cb9f5b6407bff6f9fb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool program_is_running
    
    int8 EXECUTION_ERROR = -2
    int8 FILE_ERROR = -1
    int8 NONE = 0
    int8 PREEMPTED = 1
    int8 SUCCESS = 2
    
    int8 last_execution_status
    string last_execution_msg
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ProgramIsRunning(null);
    if (msg.program_is_running !== undefined) {
      resolved.program_is_running = msg.program_is_running;
    }
    else {
      resolved.program_is_running = false
    }

    if (msg.last_execution_status !== undefined) {
      resolved.last_execution_status = msg.last_execution_status;
    }
    else {
      resolved.last_execution_status = 0
    }

    if (msg.last_execution_msg !== undefined) {
      resolved.last_execution_msg = msg.last_execution_msg;
    }
    else {
      resolved.last_execution_msg = ''
    }

    return resolved;
    }
};

// Constants for message
ProgramIsRunning.Constants = {
  EXECUTION_ERROR: -2,
  FILE_ERROR: -1,
  NONE: 0,
  PREEMPTED: 1,
  SUCCESS: 2,
}

module.exports = ProgramIsRunning;
