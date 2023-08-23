// Auto-generated. Do not edit!

// (in-package niryo_robot_status.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.robot_status = null;
      this.robot_status_str = null;
      this.robot_message = null;
      this.logs_status = null;
      this.logs_status_str = null;
      this.logs_message = null;
      this.out_of_bounds = null;
      this.rpi_overheating = null;
    }
    else {
      if (initObj.hasOwnProperty('robot_status')) {
        this.robot_status = initObj.robot_status
      }
      else {
        this.robot_status = 0;
      }
      if (initObj.hasOwnProperty('robot_status_str')) {
        this.robot_status_str = initObj.robot_status_str
      }
      else {
        this.robot_status_str = '';
      }
      if (initObj.hasOwnProperty('robot_message')) {
        this.robot_message = initObj.robot_message
      }
      else {
        this.robot_message = '';
      }
      if (initObj.hasOwnProperty('logs_status')) {
        this.logs_status = initObj.logs_status
      }
      else {
        this.logs_status = 0;
      }
      if (initObj.hasOwnProperty('logs_status_str')) {
        this.logs_status_str = initObj.logs_status_str
      }
      else {
        this.logs_status_str = '';
      }
      if (initObj.hasOwnProperty('logs_message')) {
        this.logs_message = initObj.logs_message
      }
      else {
        this.logs_message = '';
      }
      if (initObj.hasOwnProperty('out_of_bounds')) {
        this.out_of_bounds = initObj.out_of_bounds
      }
      else {
        this.out_of_bounds = false;
      }
      if (initObj.hasOwnProperty('rpi_overheating')) {
        this.rpi_overheating = initObj.rpi_overheating
      }
      else {
        this.rpi_overheating = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [robot_status]
    bufferOffset = _serializer.int8(obj.robot_status, buffer, bufferOffset);
    // Serialize message field [robot_status_str]
    bufferOffset = _serializer.string(obj.robot_status_str, buffer, bufferOffset);
    // Serialize message field [robot_message]
    bufferOffset = _serializer.string(obj.robot_message, buffer, bufferOffset);
    // Serialize message field [logs_status]
    bufferOffset = _serializer.int8(obj.logs_status, buffer, bufferOffset);
    // Serialize message field [logs_status_str]
    bufferOffset = _serializer.string(obj.logs_status_str, buffer, bufferOffset);
    // Serialize message field [logs_message]
    bufferOffset = _serializer.string(obj.logs_message, buffer, bufferOffset);
    // Serialize message field [out_of_bounds]
    bufferOffset = _serializer.bool(obj.out_of_bounds, buffer, bufferOffset);
    // Serialize message field [rpi_overheating]
    bufferOffset = _serializer.bool(obj.rpi_overheating, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [robot_status]
    data.robot_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [robot_status_str]
    data.robot_status_str = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_message]
    data.robot_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [logs_status]
    data.logs_status = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [logs_status_str]
    data.logs_status_str = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [logs_message]
    data.logs_message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [out_of_bounds]
    data.out_of_bounds = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rpi_overheating]
    data.rpi_overheating = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.robot_status_str);
    length += _getByteLength(object.robot_message);
    length += _getByteLength(object.logs_status_str);
    length += _getByteLength(object.logs_message);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_status/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '348f86f9a8f05f5136ecc49809ffebf2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 UPDATE=-7
    int8 REBOOT=-6
    int8 SHUTDOWN=-5
    int8 FATAL_ERROR=-4     # Node crash
    int8 MOTOR_ERROR=-3     # Electrical/overload or disconnected motor error
    int8 COLLISION=-2
    int8 USER_PROGRAM_ERROR=-1
    int8 UNKNOWN=0
    int8 BOOTING=1          # Robot is booting
    int8 REBOOT_MOTOR=2
    int8 CALIBRATION_NEEDED=3
    int8 CALIBRATION_IN_PROGRESS=4
    int8 LEARNING_MODE=5
    int8 STANDBY=6          # Torque ON
    int8 MOVING=7           # Moving with NiryoStudio interface or ros topics without user program
    int8 RUNNING_AUTONOMOUS=8   # User program is running
    int8 RUNNING_DEBUG=9    # Debug program is running
    int8 PAUSE=10           # User program paused
    int8 LEARNING_MODE_AUTONOMOUS=11    # User program is running + Learning mode activated
    int8 LEARNING_TRAJECTORY = 12
    int8 REBOOT_MOTOR=13
    
    int8 robot_status
    string robot_status_str
    string robot_message
    
    int8 FATAL=-3
    int8 ERROR=-2
    int8 WARN=-1
    int8 NONE=0
    
    int8 logs_status
    string logs_status_str
    string logs_message
    
    bool out_of_bounds
    bool rpi_overheating
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.robot_status !== undefined) {
      resolved.robot_status = msg.robot_status;
    }
    else {
      resolved.robot_status = 0
    }

    if (msg.robot_status_str !== undefined) {
      resolved.robot_status_str = msg.robot_status_str;
    }
    else {
      resolved.robot_status_str = ''
    }

    if (msg.robot_message !== undefined) {
      resolved.robot_message = msg.robot_message;
    }
    else {
      resolved.robot_message = ''
    }

    if (msg.logs_status !== undefined) {
      resolved.logs_status = msg.logs_status;
    }
    else {
      resolved.logs_status = 0
    }

    if (msg.logs_status_str !== undefined) {
      resolved.logs_status_str = msg.logs_status_str;
    }
    else {
      resolved.logs_status_str = ''
    }

    if (msg.logs_message !== undefined) {
      resolved.logs_message = msg.logs_message;
    }
    else {
      resolved.logs_message = ''
    }

    if (msg.out_of_bounds !== undefined) {
      resolved.out_of_bounds = msg.out_of_bounds;
    }
    else {
      resolved.out_of_bounds = false
    }

    if (msg.rpi_overheating !== undefined) {
      resolved.rpi_overheating = msg.rpi_overheating;
    }
    else {
      resolved.rpi_overheating = false
    }

    return resolved;
    }
};

// Constants for message
RobotStatus.Constants = {
  UPDATE: -7,
  REBOOT: -6,
  SHUTDOWN: -5,
  FATAL_ERROR: -4,
  MOTOR_ERROR: -3,
  COLLISION: -2,
  USER_PROGRAM_ERROR: -1,
  UNKNOWN: 0,
  BOOTING: 1,
  REBOOT_MOTOR: 2,
  CALIBRATION_NEEDED: 3,
  CALIBRATION_IN_PROGRESS: 4,
  LEARNING_MODE: 5,
  STANDBY: 6,
  MOVING: 7,
  RUNNING_AUTONOMOUS: 8,
  RUNNING_DEBUG: 9,
  PAUSE: 10,
  LEARNING_MODE_AUTONOMOUS: 11,
  LEARNING_TRAJECTORY: 12,
  REBOOT_MOTOR: 13,
  FATAL: -3,
  ERROR: -2,
  WARN: -1,
  NONE: 0,
}

module.exports = RobotStatus;
