// Auto-generated. Do not edit!

// (in-package niryo_robot_system_api_client.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManageEthernetRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.profile = null;
      this.ip = null;
      this.mask = null;
      this.gateway = null;
      this.dns = null;
    }
    else {
      if (initObj.hasOwnProperty('profile')) {
        this.profile = initObj.profile
      }
      else {
        this.profile = 0;
      }
      if (initObj.hasOwnProperty('ip')) {
        this.ip = initObj.ip
      }
      else {
        this.ip = '';
      }
      if (initObj.hasOwnProperty('mask')) {
        this.mask = initObj.mask
      }
      else {
        this.mask = '';
      }
      if (initObj.hasOwnProperty('gateway')) {
        this.gateway = initObj.gateway
      }
      else {
        this.gateway = '';
      }
      if (initObj.hasOwnProperty('dns')) {
        this.dns = initObj.dns
      }
      else {
        this.dns = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageEthernetRequest
    // Serialize message field [profile]
    bufferOffset = _serializer.int8(obj.profile, buffer, bufferOffset);
    // Serialize message field [ip]
    bufferOffset = _serializer.string(obj.ip, buffer, bufferOffset);
    // Serialize message field [mask]
    bufferOffset = _serializer.string(obj.mask, buffer, bufferOffset);
    // Serialize message field [gateway]
    bufferOffset = _serializer.string(obj.gateway, buffer, bufferOffset);
    // Serialize message field [dns]
    bufferOffset = _serializer.string(obj.dns, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageEthernetRequest
    let len;
    let data = new ManageEthernetRequest(null);
    // Deserialize message field [profile]
    data.profile = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [ip]
    data.ip = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mask]
    data.mask = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [gateway]
    data.gateway = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [dns]
    data.dns = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.ip);
    length += _getByteLength(object.mask);
    length += _getByteLength(object.gateway);
    length += _getByteLength(object.dns);
    return length + 17;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_system_api_client/ManageEthernetRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3cd34c0a8f9d181a1675b65166d00d04';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 STATIC = 1
    int8 AUTO = 2
    int8 CUSTOM = 3
    
    int8 profile
    
    # Only for the custom profile
    string ip       # ex: '192.168.1.73'
    string mask     # ex: '255.255.255.0'
    string gateway  # ex: '192.168.1.1'
    # Optional
    string dns      # ex: '8.8.8.8 4.4.4.4' separated by spaces
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageEthernetRequest(null);
    if (msg.profile !== undefined) {
      resolved.profile = msg.profile;
    }
    else {
      resolved.profile = 0
    }

    if (msg.ip !== undefined) {
      resolved.ip = msg.ip;
    }
    else {
      resolved.ip = ''
    }

    if (msg.mask !== undefined) {
      resolved.mask = msg.mask;
    }
    else {
      resolved.mask = ''
    }

    if (msg.gateway !== undefined) {
      resolved.gateway = msg.gateway;
    }
    else {
      resolved.gateway = ''
    }

    if (msg.dns !== undefined) {
      resolved.dns = msg.dns;
    }
    else {
      resolved.dns = ''
    }

    return resolved;
    }
};

// Constants for message
ManageEthernetRequest.Constants = {
  STATIC: 1,
  AUTO: 2,
  CUSTOM: 3,
}

class ManageEthernetResponse {
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
    // Serializes a message object of type ManageEthernetResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageEthernetResponse
    let len;
    let data = new ManageEthernetResponse(null);
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
    return 'niryo_robot_system_api_client/ManageEthernetResponse';
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
    const resolved = new ManageEthernetResponse(null);
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
  Request: ManageEthernetRequest,
  Response: ManageEthernetResponse,
  md5sum() { return '0a76b4b10cb91c7af82dd73375850740'; },
  datatype() { return 'niryo_robot_system_api_client/ManageEthernet'; }
};
