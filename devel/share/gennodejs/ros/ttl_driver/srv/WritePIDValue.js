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

class WritePIDValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.pos_p_gain = null;
      this.pos_i_gain = null;
      this.pos_d_gain = null;
      this.vel_p_gain = null;
      this.vel_i_gain = null;
      this.ff1_gain = null;
      this.ff2_gain = null;
      this.vel_profile = null;
      this.acc_profile = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('pos_p_gain')) {
        this.pos_p_gain = initObj.pos_p_gain
      }
      else {
        this.pos_p_gain = 0;
      }
      if (initObj.hasOwnProperty('pos_i_gain')) {
        this.pos_i_gain = initObj.pos_i_gain
      }
      else {
        this.pos_i_gain = 0;
      }
      if (initObj.hasOwnProperty('pos_d_gain')) {
        this.pos_d_gain = initObj.pos_d_gain
      }
      else {
        this.pos_d_gain = 0;
      }
      if (initObj.hasOwnProperty('vel_p_gain')) {
        this.vel_p_gain = initObj.vel_p_gain
      }
      else {
        this.vel_p_gain = 0;
      }
      if (initObj.hasOwnProperty('vel_i_gain')) {
        this.vel_i_gain = initObj.vel_i_gain
      }
      else {
        this.vel_i_gain = 0;
      }
      if (initObj.hasOwnProperty('ff1_gain')) {
        this.ff1_gain = initObj.ff1_gain
      }
      else {
        this.ff1_gain = 0;
      }
      if (initObj.hasOwnProperty('ff2_gain')) {
        this.ff2_gain = initObj.ff2_gain
      }
      else {
        this.ff2_gain = 0;
      }
      if (initObj.hasOwnProperty('vel_profile')) {
        this.vel_profile = initObj.vel_profile
      }
      else {
        this.vel_profile = 0;
      }
      if (initObj.hasOwnProperty('acc_profile')) {
        this.acc_profile = initObj.acc_profile
      }
      else {
        this.acc_profile = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WritePIDValueRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [pos_p_gain]
    bufferOffset = _serializer.uint16(obj.pos_p_gain, buffer, bufferOffset);
    // Serialize message field [pos_i_gain]
    bufferOffset = _serializer.uint16(obj.pos_i_gain, buffer, bufferOffset);
    // Serialize message field [pos_d_gain]
    bufferOffset = _serializer.uint16(obj.pos_d_gain, buffer, bufferOffset);
    // Serialize message field [vel_p_gain]
    bufferOffset = _serializer.uint16(obj.vel_p_gain, buffer, bufferOffset);
    // Serialize message field [vel_i_gain]
    bufferOffset = _serializer.uint16(obj.vel_i_gain, buffer, bufferOffset);
    // Serialize message field [ff1_gain]
    bufferOffset = _serializer.uint16(obj.ff1_gain, buffer, bufferOffset);
    // Serialize message field [ff2_gain]
    bufferOffset = _serializer.uint16(obj.ff2_gain, buffer, bufferOffset);
    // Serialize message field [vel_profile]
    bufferOffset = _serializer.uint32(obj.vel_profile, buffer, bufferOffset);
    // Serialize message field [acc_profile]
    bufferOffset = _serializer.uint32(obj.acc_profile, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WritePIDValueRequest
    let len;
    let data = new WritePIDValueRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [pos_p_gain]
    data.pos_p_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pos_i_gain]
    data.pos_i_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [pos_d_gain]
    data.pos_d_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vel_p_gain]
    data.vel_p_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vel_i_gain]
    data.vel_i_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ff1_gain]
    data.ff1_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [ff2_gain]
    data.ff2_gain = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [vel_profile]
    data.vel_profile = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [acc_profile]
    data.acc_profile = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 23;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/WritePIDValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '72133310c8095b1fd7ac5be8d1b09825';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Check XL-XXX motors reference doc for
    # the complete register table
    
    uint8 id
    uint16 pos_p_gain
    uint16 pos_i_gain
    uint16 pos_d_gain
    
    uint16 vel_p_gain
    uint16 vel_i_gain
    
    uint16 ff1_gain
    uint16 ff2_gain
    
    # vel and acc profile for dxl
    uint32 vel_profile
    uint32 acc_profile
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WritePIDValueRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.pos_p_gain !== undefined) {
      resolved.pos_p_gain = msg.pos_p_gain;
    }
    else {
      resolved.pos_p_gain = 0
    }

    if (msg.pos_i_gain !== undefined) {
      resolved.pos_i_gain = msg.pos_i_gain;
    }
    else {
      resolved.pos_i_gain = 0
    }

    if (msg.pos_d_gain !== undefined) {
      resolved.pos_d_gain = msg.pos_d_gain;
    }
    else {
      resolved.pos_d_gain = 0
    }

    if (msg.vel_p_gain !== undefined) {
      resolved.vel_p_gain = msg.vel_p_gain;
    }
    else {
      resolved.vel_p_gain = 0
    }

    if (msg.vel_i_gain !== undefined) {
      resolved.vel_i_gain = msg.vel_i_gain;
    }
    else {
      resolved.vel_i_gain = 0
    }

    if (msg.ff1_gain !== undefined) {
      resolved.ff1_gain = msg.ff1_gain;
    }
    else {
      resolved.ff1_gain = 0
    }

    if (msg.ff2_gain !== undefined) {
      resolved.ff2_gain = msg.ff2_gain;
    }
    else {
      resolved.ff2_gain = 0
    }

    if (msg.vel_profile !== undefined) {
      resolved.vel_profile = msg.vel_profile;
    }
    else {
      resolved.vel_profile = 0
    }

    if (msg.acc_profile !== undefined) {
      resolved.acc_profile = msg.acc_profile;
    }
    else {
      resolved.acc_profile = 0
    }

    return resolved;
    }
};

class WritePIDValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WritePIDValueResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WritePIDValueResponse
    let len;
    let data = new WritePIDValueResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/WritePIDValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WritePIDValueResponse(null);
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
  Request: WritePIDValueRequest,
  Response: WritePIDValueResponse,
  md5sum() { return '017cd3b317df9961b6cf57aa9e1a9f80'; },
  datatype() { return 'ttl_driver/WritePIDValue'; }
};
