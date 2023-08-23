// Auto-generated. Do not edit!

// (in-package ttl_driver.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ReadVelocityProfileRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadVelocityProfileRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadVelocityProfileRequest
    let len;
    let data = new ReadVelocityProfileRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/ReadVelocityProfileRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '541b98e964705918fa8eb206b65347b3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Check stepper ttl reference doc for
    # the complete register table
    
    uint8 id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadVelocityProfileRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    return resolved;
    }
};

class ReadVelocityProfileResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.v_start = null;
      this.a_1 = null;
      this.v_1 = null;
      this.a_max = null;
      this.v_max = null;
      this.d_max = null;
      this.d_1 = null;
      this.v_stop = null;
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('v_start')) {
        this.v_start = initObj.v_start
      }
      else {
        this.v_start = 0.0;
      }
      if (initObj.hasOwnProperty('a_1')) {
        this.a_1 = initObj.a_1
      }
      else {
        this.a_1 = 0.0;
      }
      if (initObj.hasOwnProperty('v_1')) {
        this.v_1 = initObj.v_1
      }
      else {
        this.v_1 = 0.0;
      }
      if (initObj.hasOwnProperty('a_max')) {
        this.a_max = initObj.a_max
      }
      else {
        this.a_max = 0.0;
      }
      if (initObj.hasOwnProperty('v_max')) {
        this.v_max = initObj.v_max
      }
      else {
        this.v_max = 0.0;
      }
      if (initObj.hasOwnProperty('d_max')) {
        this.d_max = initObj.d_max
      }
      else {
        this.d_max = 0.0;
      }
      if (initObj.hasOwnProperty('d_1')) {
        this.d_1 = initObj.d_1
      }
      else {
        this.d_1 = 0.0;
      }
      if (initObj.hasOwnProperty('v_stop')) {
        this.v_stop = initObj.v_stop
      }
      else {
        this.v_stop = 0.0;
      }
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadVelocityProfileResponse
    // Serialize message field [v_start]
    bufferOffset = _serializer.float64(obj.v_start, buffer, bufferOffset);
    // Serialize message field [a_1]
    bufferOffset = _serializer.float64(obj.a_1, buffer, bufferOffset);
    // Serialize message field [v_1]
    bufferOffset = _serializer.float64(obj.v_1, buffer, bufferOffset);
    // Serialize message field [a_max]
    bufferOffset = _serializer.float64(obj.a_max, buffer, bufferOffset);
    // Serialize message field [v_max]
    bufferOffset = _serializer.float64(obj.v_max, buffer, bufferOffset);
    // Serialize message field [d_max]
    bufferOffset = _serializer.float64(obj.d_max, buffer, bufferOffset);
    // Serialize message field [d_1]
    bufferOffset = _serializer.float64(obj.d_1, buffer, bufferOffset);
    // Serialize message field [v_stop]
    bufferOffset = _serializer.float64(obj.v_stop, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadVelocityProfileResponse
    let len;
    let data = new ReadVelocityProfileResponse(null);
    // Deserialize message field [v_start]
    data.v_start = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_1]
    data.a_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_1]
    data.v_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [a_max]
    data.a_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_max]
    data.v_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_max]
    data.d_max = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [d_1]
    data.d_1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [v_stop]
    data.v_stop = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 72;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/ReadVelocityProfileResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb1d3c27a4ecb4cb7ad1cd68d7179851';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float64 v_start
    
    float64 a_1
    float64 v_1
    
    float64 a_max
    float64 v_max
    float64 d_max
    
    float64 d_1
    
    float64 v_stop
    
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadVelocityProfileResponse(null);
    if (msg.v_start !== undefined) {
      resolved.v_start = msg.v_start;
    }
    else {
      resolved.v_start = 0.0
    }

    if (msg.a_1 !== undefined) {
      resolved.a_1 = msg.a_1;
    }
    else {
      resolved.a_1 = 0.0
    }

    if (msg.v_1 !== undefined) {
      resolved.v_1 = msg.v_1;
    }
    else {
      resolved.v_1 = 0.0
    }

    if (msg.a_max !== undefined) {
      resolved.a_max = msg.a_max;
    }
    else {
      resolved.a_max = 0.0
    }

    if (msg.v_max !== undefined) {
      resolved.v_max = msg.v_max;
    }
    else {
      resolved.v_max = 0.0
    }

    if (msg.d_max !== undefined) {
      resolved.d_max = msg.d_max;
    }
    else {
      resolved.d_max = 0.0
    }

    if (msg.d_1 !== undefined) {
      resolved.d_1 = msg.d_1;
    }
    else {
      resolved.d_1 = 0.0
    }

    if (msg.v_stop !== undefined) {
      resolved.v_stop = msg.v_stop;
    }
    else {
      resolved.v_stop = 0.0
    }

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

    return resolved;
    }
};

module.exports = {
  Request: ReadVelocityProfileRequest,
  Response: ReadVelocityProfileResponse,
  md5sum() { return '6149ad44c82bc4f1ae5c2f507a8ea7e5'; },
  datatype() { return 'ttl_driver/ReadVelocityProfile'; }
};
