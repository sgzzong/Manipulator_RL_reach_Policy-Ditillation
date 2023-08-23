// Auto-generated. Do not edit!

// (in-package can_driver.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let niryo_robot_msgs = _finder('niryo_robot_msgs');

//-----------------------------------------------------------

class StepperMotorHardwareStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_identity = null;
      this.firmware_version = null;
      this.temperature = null;
      this.voltage = null;
      this.error = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_identity')) {
        this.motor_identity = initObj.motor_identity
      }
      else {
        this.motor_identity = new niryo_robot_msgs.msg.MotorHeader();
      }
      if (initObj.hasOwnProperty('firmware_version')) {
        this.firmware_version = initObj.firmware_version
      }
      else {
        this.firmware_version = '';
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = 0;
      }
      if (initObj.hasOwnProperty('voltage')) {
        this.voltage = initObj.voltage
      }
      else {
        this.voltage = 0;
      }
      if (initObj.hasOwnProperty('error')) {
        this.error = initObj.error
      }
      else {
        this.error = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type StepperMotorHardwareStatus
    // Serialize message field [motor_identity]
    bufferOffset = niryo_robot_msgs.msg.MotorHeader.serialize(obj.motor_identity, buffer, bufferOffset);
    // Serialize message field [firmware_version]
    bufferOffset = _serializer.string(obj.firmware_version, buffer, bufferOffset);
    // Serialize message field [temperature]
    bufferOffset = _serializer.int32(obj.temperature, buffer, bufferOffset);
    // Serialize message field [voltage]
    bufferOffset = _serializer.int32(obj.voltage, buffer, bufferOffset);
    // Serialize message field [error]
    bufferOffset = _serializer.int32(obj.error, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StepperMotorHardwareStatus
    let len;
    let data = new StepperMotorHardwareStatus(null);
    // Deserialize message field [motor_identity]
    data.motor_identity = niryo_robot_msgs.msg.MotorHeader.deserialize(buffer, bufferOffset);
    // Deserialize message field [firmware_version]
    data.firmware_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [temperature]
    data.temperature = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [voltage]
    data.voltage = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [error]
    data.error = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.firmware_version);
    return length + 18;
  }

  static datatype() {
    // Returns string type for a message object
    return 'can_driver/StepperMotorHardwareStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc9f2f633cce4d29f5db57dd384bcf57';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_msgs/MotorHeader motor_identity
    
    string firmware_version
    int32 temperature
    int32 voltage
    int32 error
    
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
    const resolved = new StepperMotorHardwareStatus(null);
    if (msg.motor_identity !== undefined) {
      resolved.motor_identity = niryo_robot_msgs.msg.MotorHeader.Resolve(msg.motor_identity)
    }
    else {
      resolved.motor_identity = new niryo_robot_msgs.msg.MotorHeader()
    }

    if (msg.firmware_version !== undefined) {
      resolved.firmware_version = msg.firmware_version;
    }
    else {
      resolved.firmware_version = ''
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = 0
    }

    if (msg.voltage !== undefined) {
      resolved.voltage = msg.voltage;
    }
    else {
      resolved.voltage = 0
    }

    if (msg.error !== undefined) {
      resolved.error = msg.error;
    }
    else {
      resolved.error = 0
    }

    return resolved;
    }
};

module.exports = StepperMotorHardwareStatus;
