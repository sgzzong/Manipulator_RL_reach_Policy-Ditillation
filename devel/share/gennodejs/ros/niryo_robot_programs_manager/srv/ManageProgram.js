// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProgramLanguage = require('../msg/ProgramLanguage.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManageProgramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.name = null;
      this.language = null;
      this.code = null;
      this.description = null;
      this.allow_overwrite = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = new ProgramLanguage();
      }
      if (initObj.hasOwnProperty('code')) {
        this.code = initObj.code
      }
      else {
        this.code = '';
      }
      if (initObj.hasOwnProperty('description')) {
        this.description = initObj.description
      }
      else {
        this.description = '';
      }
      if (initObj.hasOwnProperty('allow_overwrite')) {
        this.allow_overwrite = initObj.allow_overwrite
      }
      else {
        this.allow_overwrite = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageProgramRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int8(obj.cmd, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = ProgramLanguage.serialize(obj.language, buffer, bufferOffset);
    // Serialize message field [code]
    bufferOffset = _serializer.string(obj.code, buffer, bufferOffset);
    // Serialize message field [description]
    bufferOffset = _serializer.string(obj.description, buffer, bufferOffset);
    // Serialize message field [allow_overwrite]
    bufferOffset = _serializer.bool(obj.allow_overwrite, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageProgramRequest
    let len;
    let data = new ManageProgramRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = ProgramLanguage.deserialize(buffer, bufferOffset);
    // Deserialize message field [code]
    data.code = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [description]
    data.description = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [allow_overwrite]
    data.allow_overwrite = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.code);
    length += _getByteLength(object.description);
    return length + 15;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/ManageProgramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e16e278c524ef447c90636fcda83c88a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Command
    int32 SAVE = 1
    int32 DELETE = -1
    int8 cmd
    
    # Program Name
    string name
    
    # - Creation
    niryo_robot_programs_manager/ProgramLanguage language
    
    string code
    string description
    
    bool allow_overwrite
    
    ================================================================================
    MSG: niryo_robot_programs_manager/ProgramLanguage
    int8 NONE = -1
    
    int8 ALL = 0
    
    # Runnable
    int8 PYTHON2 = 1
    int8 PYTHON3 = 2
    
    # Not Runnable
    int8 BLOCKLY = 66
    
    int8 used
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageProgramRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.language !== undefined) {
      resolved.language = ProgramLanguage.Resolve(msg.language)
    }
    else {
      resolved.language = new ProgramLanguage()
    }

    if (msg.code !== undefined) {
      resolved.code = msg.code;
    }
    else {
      resolved.code = ''
    }

    if (msg.description !== undefined) {
      resolved.description = msg.description;
    }
    else {
      resolved.description = ''
    }

    if (msg.allow_overwrite !== undefined) {
      resolved.allow_overwrite = msg.allow_overwrite;
    }
    else {
      resolved.allow_overwrite = false
    }

    return resolved;
    }
};

// Constants for message
ManageProgramRequest.Constants = {
  SAVE: 1,
  DELETE: -1,
}

class ManageProgramResponse {
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
    // Serializes a message object of type ManageProgramResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageProgramResponse
    let len;
    let data = new ManageProgramResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/ManageProgramResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '09803e1f4a40b6f2352e453a75b02d0b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 status
    string message
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageProgramResponse(null);
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
  Request: ManageProgramRequest,
  Response: ManageProgramResponse,
  md5sum() { return 'c7b681976ba3e7a74583c11ce955db81'; },
  datatype() { return 'niryo_robot_programs_manager/ManageProgram'; }
};
