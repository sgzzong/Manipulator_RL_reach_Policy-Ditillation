// Auto-generated. Do not edit!

// (in-package niryo_robot_database.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let FilePath = require('../msg/FilePath.js');

//-----------------------------------------------------------

class GetAllByTypeRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllByTypeRequest
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllByTypeRequest
    let len;
    let data = new GetAllByTypeRequest(null);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.type);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_database/GetAllByTypeRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dc67331de85cf97091b7d45e5c64ab75';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string type
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllByTypeRequest(null);
    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

class GetAllByTypeResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.filepaths = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('filepaths')) {
        this.filepaths = initObj.filepaths
      }
      else {
        this.filepaths = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetAllByTypeResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [filepaths]
    // Serialize the length for message field [filepaths]
    bufferOffset = _serializer.uint32(obj.filepaths.length, buffer, bufferOffset);
    obj.filepaths.forEach((val) => {
      bufferOffset = FilePath.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetAllByTypeResponse
    let len;
    let data = new GetAllByTypeResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [filepaths]
    // Deserialize array length for message field [filepaths]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.filepaths = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.filepaths[i] = FilePath.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.filepaths.forEach((val) => {
      length += FilePath.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_database/GetAllByTypeResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '94e51e0c4cde6dda4fce0e9d4ab65c1f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    FilePath[] filepaths
    
    ================================================================================
    MSG: niryo_robot_database/FilePath
    string id
    string type
    string name
    string date
    string path
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetAllByTypeResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.filepaths !== undefined) {
      resolved.filepaths = new Array(msg.filepaths.length);
      for (let i = 0; i < resolved.filepaths.length; ++i) {
        resolved.filepaths[i] = FilePath.Resolve(msg.filepaths[i]);
      }
    }
    else {
      resolved.filepaths = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetAllByTypeRequest,
  Response: GetAllByTypeResponse,
  md5sum() { return 'd0918913b1da75a353e2e08189fdf5e5'; },
  datatype() { return 'niryo_robot_database/GetAllByType'; }
};
