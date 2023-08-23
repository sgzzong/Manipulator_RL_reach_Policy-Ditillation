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

class SoftwareVersion {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rpi_image_version = null;
      this.ros_niryo_robot_version = null;
      this.robot_version = null;
      this.motor_names = null;
      this.stepper_firmware_versions = null;
    }
    else {
      if (initObj.hasOwnProperty('rpi_image_version')) {
        this.rpi_image_version = initObj.rpi_image_version
      }
      else {
        this.rpi_image_version = '';
      }
      if (initObj.hasOwnProperty('ros_niryo_robot_version')) {
        this.ros_niryo_robot_version = initObj.ros_niryo_robot_version
      }
      else {
        this.ros_niryo_robot_version = '';
      }
      if (initObj.hasOwnProperty('robot_version')) {
        this.robot_version = initObj.robot_version
      }
      else {
        this.robot_version = '';
      }
      if (initObj.hasOwnProperty('motor_names')) {
        this.motor_names = initObj.motor_names
      }
      else {
        this.motor_names = [];
      }
      if (initObj.hasOwnProperty('stepper_firmware_versions')) {
        this.stepper_firmware_versions = initObj.stepper_firmware_versions
      }
      else {
        this.stepper_firmware_versions = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoftwareVersion
    // Serialize message field [rpi_image_version]
    bufferOffset = _serializer.string(obj.rpi_image_version, buffer, bufferOffset);
    // Serialize message field [ros_niryo_robot_version]
    bufferOffset = _serializer.string(obj.ros_niryo_robot_version, buffer, bufferOffset);
    // Serialize message field [robot_version]
    bufferOffset = _serializer.string(obj.robot_version, buffer, bufferOffset);
    // Serialize message field [motor_names]
    bufferOffset = _arraySerializer.string(obj.motor_names, buffer, bufferOffset, null);
    // Serialize message field [stepper_firmware_versions]
    bufferOffset = _arraySerializer.string(obj.stepper_firmware_versions, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoftwareVersion
    let len;
    let data = new SoftwareVersion(null);
    // Deserialize message field [rpi_image_version]
    data.rpi_image_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [ros_niryo_robot_version]
    data.ros_niryo_robot_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [robot_version]
    data.robot_version = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [motor_names]
    data.motor_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [stepper_firmware_versions]
    data.stepper_firmware_versions = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.rpi_image_version);
    length += _getByteLength(object.ros_niryo_robot_version);
    length += _getByteLength(object.robot_version);
    object.motor_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.stepper_firmware_versions.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_msgs/SoftwareVersion';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '6d753e36564fa618802ffe450e4bbdd2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rpi_image_version
    string ros_niryo_robot_version
    string robot_version
    
    string[] motor_names
    string[] stepper_firmware_versions
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoftwareVersion(null);
    if (msg.rpi_image_version !== undefined) {
      resolved.rpi_image_version = msg.rpi_image_version;
    }
    else {
      resolved.rpi_image_version = ''
    }

    if (msg.ros_niryo_robot_version !== undefined) {
      resolved.ros_niryo_robot_version = msg.ros_niryo_robot_version;
    }
    else {
      resolved.ros_niryo_robot_version = ''
    }

    if (msg.robot_version !== undefined) {
      resolved.robot_version = msg.robot_version;
    }
    else {
      resolved.robot_version = ''
    }

    if (msg.motor_names !== undefined) {
      resolved.motor_names = msg.motor_names;
    }
    else {
      resolved.motor_names = []
    }

    if (msg.stepper_firmware_versions !== undefined) {
      resolved.stepper_firmware_versions = msg.stepper_firmware_versions;
    }
    else {
      resolved.stepper_firmware_versions = []
    }

    return resolved;
    }
};

module.exports = SoftwareVersion;
