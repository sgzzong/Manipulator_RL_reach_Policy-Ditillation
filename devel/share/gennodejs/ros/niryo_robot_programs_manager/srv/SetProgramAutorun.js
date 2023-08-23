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

class SetProgramAutorunRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language = null;
      this.name = null;
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = new ProgramLanguage();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SetProgramAutorunRequest
    // Serialize message field [language]
    bufferOffset = ProgramLanguage.serialize(obj.language, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [mode]
    bufferOffset = _serializer.int8(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProgramAutorunRequest
    let len;
    let data = new SetProgramAutorunRequest(null);
    // Deserialize message field [language]
    data.language = ProgramLanguage.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [mode]
    data.mode = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    return length + 6;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/SetProgramAutorunRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9cb47f0e455cb6226c9ab9fd44e266c1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Program language
    niryo_robot_programs_manager/ProgramLanguage language
    
    # Program Name
    string name
    
    # Mode
    int8 DISABLE = 0
    int8 ONE_SHOT = 1
    int8 LOOP = 2
    
    int8 mode
    
    
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
    const resolved = new SetProgramAutorunRequest(null);
    if (msg.language !== undefined) {
      resolved.language = ProgramLanguage.Resolve(msg.language)
    }
    else {
      resolved.language = new ProgramLanguage()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    return resolved;
    }
};

// Constants for message
SetProgramAutorunRequest.Constants = {
  DISABLE: 0,
  ONE_SHOT: 1,
  LOOP: 2,
}

class SetProgramAutorunResponse {
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
    // Serializes a message object of type SetProgramAutorunResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int16(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SetProgramAutorunResponse
    let len;
    let data = new SetProgramAutorunResponse(null);
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
    return 'niryo_robot_programs_manager/SetProgramAutorunResponse';
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
    const resolved = new SetProgramAutorunResponse(null);
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
  Request: SetProgramAutorunRequest,
  Response: SetProgramAutorunResponse,
  md5sum() { return '6daf4f32083258273fc8b9bd84cd3a36'; },
  datatype() { return 'niryo_robot_programs_manager/SetProgramAutorun'; }
};
