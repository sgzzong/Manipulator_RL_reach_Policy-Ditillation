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

class ReadCustomValueRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.reg_address = null;
      this.byte_number = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('reg_address')) {
        this.reg_address = initObj.reg_address
      }
      else {
        this.reg_address = 0;
      }
      if (initObj.hasOwnProperty('byte_number')) {
        this.byte_number = initObj.byte_number
      }
      else {
        this.byte_number = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ReadCustomValueRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [reg_address]
    bufferOffset = _serializer.int32(obj.reg_address, buffer, bufferOffset);
    // Serialize message field [byte_number]
    bufferOffset = _serializer.int32(obj.byte_number, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadCustomValueRequest
    let len;
    let data = new ReadCustomValueRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [reg_address]
    data.reg_address = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [byte_number]
    data.byte_number = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/ReadCustomValueRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '248e2f1be517216d9caade870f501e8d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Check XL-320 and XL-430 reference doc for
    # the complete register table
    
    uint8 id
    int32 reg_address
    int32 byte_number
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadCustomValueRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.reg_address !== undefined) {
      resolved.reg_address = msg.reg_address;
    }
    else {
      resolved.reg_address = 0
    }

    if (msg.byte_number !== undefined) {
      resolved.byte_number = msg.byte_number;
    }
    else {
      resolved.byte_number = 0
    }

    return resolved;
    }
};

class ReadCustomValueResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.value = null;
      this.status = null;
      this.message = null;
    }
    else {
      if (initObj.hasOwnProperty('value')) {
        this.value = initObj.value
      }
      else {
        this.value = 0;
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
    // Serializes a message object of type ReadCustomValueResponse
    // Serialize message field [value]
    bufferOffset = _serializer.int32(obj.value, buffer, bufferOffset);
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ReadCustomValueResponse
    let len;
    let data = new ReadCustomValueResponse(null);
    // Deserialize message field [value]
    data.value = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'ttl_driver/ReadCustomValueResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '284400a6c8542200d2fa35fcdefe9fa1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 value
    int32 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ReadCustomValueResponse(null);
    if (msg.value !== undefined) {
      resolved.value = msg.value;
    }
    else {
      resolved.value = 0
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
  Request: ReadCustomValueRequest,
  Response: ReadCustomValueResponse,
  md5sum() { return '5313d8a6d811b0dd65e0326479c514d8'; },
  datatype() { return 'ttl_driver/ReadCustomValue'; }
};
