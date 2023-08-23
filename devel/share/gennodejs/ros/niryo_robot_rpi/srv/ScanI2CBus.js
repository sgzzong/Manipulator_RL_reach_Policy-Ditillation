// Auto-generated. Do not edit!

// (in-package niryo_robot_rpi.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let I2CComponent = require('../msg/I2CComponent.js');

//-----------------------------------------------------------

class ScanI2CBusRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanI2CBusRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanI2CBusRequest
    let len;
    let data = new ScanI2CBusRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_rpi/ScanI2CBusRequest';
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
    const resolved = new ScanI2CBusRequest(null);
    return resolved;
    }
};

class ScanI2CBusResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.is_ok = null;
      this.missing = null;
      this.detected = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('message')) {
        this.message = initObj.message
      }
      else {
        this.message = '';
      }
      if (initObj.hasOwnProperty('is_ok')) {
        this.is_ok = initObj.is_ok
      }
      else {
        this.is_ok = false;
      }
      if (initObj.hasOwnProperty('missing')) {
        this.missing = initObj.missing
      }
      else {
        this.missing = [];
      }
      if (initObj.hasOwnProperty('detected')) {
        this.detected = initObj.detected
      }
      else {
        this.detected = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ScanI2CBusResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [is_ok]
    bufferOffset = _serializer.bool(obj.is_ok, buffer, bufferOffset);
    // Serialize message field [missing]
    // Serialize the length for message field [missing]
    bufferOffset = _serializer.uint32(obj.missing.length, buffer, bufferOffset);
    obj.missing.forEach((val) => {
      bufferOffset = I2CComponent.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [detected]
    // Serialize the length for message field [detected]
    bufferOffset = _serializer.uint32(obj.detected.length, buffer, bufferOffset);
    obj.detected.forEach((val) => {
      bufferOffset = I2CComponent.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ScanI2CBusResponse
    let len;
    let data = new ScanI2CBusResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_ok]
    data.is_ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [missing]
    // Deserialize array length for message field [missing]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.missing = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.missing[i] = I2CComponent.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [detected]
    // Deserialize array length for message field [detected]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.detected = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.detected[i] = I2CComponent.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    object.missing.forEach((val) => {
      length += I2CComponent.getMessageSize(val);
    });
    object.detected.forEach((val) => {
      length += I2CComponent.getMessageSize(val);
    });
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_rpi/ScanI2CBusResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '808e467912d414dae099afb5994358c5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    bool is_ok
    niryo_robot_rpi/I2CComponent[] missing
    niryo_robot_rpi/I2CComponent[] detected
    
    
    ================================================================================
    MSG: niryo_robot_rpi/I2CComponent
    uint32 bus
    uint32 address
    string info
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ScanI2CBusResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.message !== undefined) {
      resolved.message = msg.message;
    }
    else {
      resolved.message = ''
    }

    if (msg.is_ok !== undefined) {
      resolved.is_ok = msg.is_ok;
    }
    else {
      resolved.is_ok = false
    }

    if (msg.missing !== undefined) {
      resolved.missing = new Array(msg.missing.length);
      for (let i = 0; i < resolved.missing.length; ++i) {
        resolved.missing[i] = I2CComponent.Resolve(msg.missing[i]);
      }
    }
    else {
      resolved.missing = []
    }

    if (msg.detected !== undefined) {
      resolved.detected = new Array(msg.detected.length);
      for (let i = 0; i < resolved.detected.length; ++i) {
        resolved.detected[i] = I2CComponent.Resolve(msg.detected[i]);
      }
    }
    else {
      resolved.detected = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ScanI2CBusRequest,
  Response: ScanI2CBusResponse,
  md5sum() { return '808e467912d414dae099afb5994358c5'; },
  datatype() { return 'niryo_robot_rpi/ScanI2CBus'; }
};
