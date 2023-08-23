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

class ExecuteProgramRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.execute_from_string = null;
      this.name = null;
      this.code_string = null;
      this.language = null;
    }
    else {
      if (initObj.hasOwnProperty('execute_from_string')) {
        this.execute_from_string = initObj.execute_from_string
      }
      else {
        this.execute_from_string = false;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('code_string')) {
        this.code_string = initObj.code_string
      }
      else {
        this.code_string = '';
      }
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = new ProgramLanguage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecuteProgramRequest
    // Serialize message field [execute_from_string]
    bufferOffset = _serializer.bool(obj.execute_from_string, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [code_string]
    bufferOffset = _serializer.string(obj.code_string, buffer, bufferOffset);
    // Serialize message field [language]
    bufferOffset = ProgramLanguage.serialize(obj.language, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecuteProgramRequest
    let len;
    let data = new ExecuteProgramRequest(null);
    // Deserialize message field [execute_from_string]
    data.execute_from_string = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [code_string]
    data.code_string = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [language]
    data.language = ProgramLanguage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.code_string);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/ExecuteProgramRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '397bed7b6ffc6aec5456827939d1e131';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool execute_from_string
    
    string name
    string code_string
    
    niryo_robot_programs_manager/ProgramLanguage language
    
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
    const resolved = new ExecuteProgramRequest(null);
    if (msg.execute_from_string !== undefined) {
      resolved.execute_from_string = msg.execute_from_string;
    }
    else {
      resolved.execute_from_string = false
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.code_string !== undefined) {
      resolved.code_string = msg.code_string;
    }
    else {
      resolved.code_string = ''
    }

    if (msg.language !== undefined) {
      resolved.language = ProgramLanguage.Resolve(msg.language)
    }
    else {
      resolved.language = new ProgramLanguage()
    }

    return resolved;
    }
};

class ExecuteProgramResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.output = null;
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
      if (initObj.hasOwnProperty('output')) {
        this.output = initObj.output
      }
      else {
        this.output = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ExecuteProgramResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [output]
    bufferOffset = _serializer.string(obj.output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ExecuteProgramResponse
    let len;
    let data = new ExecuteProgramResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [output]
    data.output = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += _getByteLength(object.output);
    return length + 10;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/ExecuteProgramResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '512868926003b7ebaa1fe22fc7ddcfa2';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 status
    string message
    string output
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ExecuteProgramResponse(null);
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

    if (msg.output !== undefined) {
      resolved.output = msg.output;
    }
    else {
      resolved.output = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: ExecuteProgramRequest,
  Response: ExecuteProgramResponse,
  md5sum() { return 'a2c95eeee3b570399cd34c19756851e1'; },
  datatype() { return 'niryo_robot_programs_manager/ExecuteProgram'; }
};
