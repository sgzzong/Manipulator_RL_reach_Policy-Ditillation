// Auto-generated. Do not edit!

// (in-package niryo_robot_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class MotorHeader {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor_id = null;
      this.motor_type = null;
    }
    else {
      if (initObj.hasOwnProperty('motor_id')) {
        this.motor_id = initObj.motor_id
      }
      else {
        this.motor_id = 0;
      }
      if (initObj.hasOwnProperty('motor_type')) {
        this.motor_type = initObj.motor_type
      }
      else {
        this.motor_type = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorHeader
    // Serialize message field [motor_id]
    bufferOffset = _serializer.uint8(obj.motor_id, buffer, bufferOffset);
    // Serialize message field [motor_type]
    bufferOffset = _serializer.uint8(obj.motor_type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorHeader
    let len;
    let data = new MotorHeader(null);
    // Deserialize message field [motor_id]
    data.motor_id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [motor_type]
    data.motor_type = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_msgs/MotorHeader';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '37f646768b4675df61058ccaf9b61862';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new MotorHeader(null);
    if (msg.motor_id !== undefined) {
      resolved.motor_id = msg.motor_id;
    }
    else {
      resolved.motor_id = 0
    }

    if (msg.motor_type !== undefined) {
      resolved.motor_type = msg.motor_type;
    }
    else {
      resolved.motor_type = 0
    }

    return resolved;
    }
};

// Constants for message
MotorHeader.Constants = {
  MOTOR_TYPE_STEPPER: 1,
  MOTOR_TYPE_XL430: 2,
  MOTOR_TYPE_XL320: 3,
  MOTOR_TYPE_XL330: 4,
  MOROR_TYPE_XC430: 5,
  MOTOR_TYPE_END_EFFECTOR: 10,
}

module.exports = MotorHeader;
