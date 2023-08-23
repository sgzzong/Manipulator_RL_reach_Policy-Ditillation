// Auto-generated. Do not edit!

// (in-package ttl_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MotorHardwareStatus = require('./MotorHardwareStatus.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ArrayMotorHardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.motors_hw_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('motors_hw_status')) {
        this.motors_hw_status = initObj.motors_hw_status
      }
      else {
        this.motors_hw_status = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ArrayMotorHardwareStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [motors_hw_status]
    // Serialize the length for message field [motors_hw_status]
    bufferOffset = _serializer.uint32(obj.motors_hw_status.length, buffer, bufferOffset);
    obj.motors_hw_status.forEach((val) => {
      bufferOffset = MotorHardwareStatus.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ArrayMotorHardwareStatus
    let len;
    let data = new ArrayMotorHardwareStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [motors_hw_status]
    // Deserialize array length for message field [motors_hw_status]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.motors_hw_status = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.motors_hw_status[i] = MotorHardwareStatus.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.motors_hw_status.forEach((val) => {
      length += MotorHardwareStatus.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ttl_driver/ArrayMotorHardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd7b82f2c3ebd12de467db5ce48b4b5c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    ttl_driver/MotorHardwareStatus[] motors_hw_status
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: ttl_driver/MotorHardwareStatus
    niryo_robot_msgs/MotorHeader motor_identity
    
    string firmware_version
    uint32 temperature
    float64 voltage
    uint32 error
    string error_msg
    
    ================================================================================
    MSG: niryo_robot_msgs/MotorHeader
    uint8 motor_id
    
    uint8 motor_type
    uint8 MOTOR_TYPE_STEPPER=1
    uint8 MOTOR_TYPE_XL430=2
    uint8 MOTOR_TYPE_XL320=3
    uint8 MOTOR_TYPE_XL330=4
    uint8 MOROR_TYPE_XC430=5
    uint8 MOTOR_TYPE_END_EFFECTOR=10
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ArrayMotorHardwareStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.motors_hw_status !== undefined) {
      resolved.motors_hw_status = new Array(msg.motors_hw_status.length);
      for (let i = 0; i < resolved.motors_hw_status.length; ++i) {
        resolved.motors_hw_status[i] = MotorHardwareStatus.Resolve(msg.motors_hw_status[i]);
      }
    }
    else {
      resolved.motors_hw_status = []
    }

    return resolved;
    }
};

module.exports = ArrayMotorHardwareStatus;
