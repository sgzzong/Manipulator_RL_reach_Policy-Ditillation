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

let ProgramLanguageList = require('../msg/ProgramLanguageList.js');

//-----------------------------------------------------------

class GetProgramListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language = null;
    }
    else {
      if (initObj.hasOwnProperty('language')) {
        this.language = initObj.language
      }
      else {
        this.language = new ProgramLanguage();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramListRequest
    // Serialize message field [language]
    bufferOffset = ProgramLanguage.serialize(obj.language, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramListRequest
    let len;
    let data = new GetProgramListRequest(null);
    // Deserialize message field [language]
    data.language = ProgramLanguage.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/GetProgramListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e5e97d3a53eb75daa8a9dc33fecbe922';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new GetProgramListRequest(null);
    if (msg.language !== undefined) {
      resolved.language = ProgramLanguage.Resolve(msg.language)
    }
    else {
      resolved.language = new ProgramLanguage()
    }

    return resolved;
    }
};

class GetProgramListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.programs_names = null;
      this.list_of_language_list = null;
      this.programs_description = null;
    }
    else {
      if (initObj.hasOwnProperty('programs_names')) {
        this.programs_names = initObj.programs_names
      }
      else {
        this.programs_names = [];
      }
      if (initObj.hasOwnProperty('list_of_language_list')) {
        this.list_of_language_list = initObj.list_of_language_list
      }
      else {
        this.list_of_language_list = [];
      }
      if (initObj.hasOwnProperty('programs_description')) {
        this.programs_description = initObj.programs_description
      }
      else {
        this.programs_description = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetProgramListResponse
    // Serialize message field [programs_names]
    bufferOffset = _arraySerializer.string(obj.programs_names, buffer, bufferOffset, null);
    // Serialize message field [list_of_language_list]
    // Serialize the length for message field [list_of_language_list]
    bufferOffset = _serializer.uint32(obj.list_of_language_list.length, buffer, bufferOffset);
    obj.list_of_language_list.forEach((val) => {
      bufferOffset = ProgramLanguageList.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [programs_description]
    bufferOffset = _arraySerializer.string(obj.programs_description, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetProgramListResponse
    let len;
    let data = new GetProgramListResponse(null);
    // Deserialize message field [programs_names]
    data.programs_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [list_of_language_list]
    // Deserialize array length for message field [list_of_language_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list_of_language_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list_of_language_list[i] = ProgramLanguageList.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [programs_description]
    data.programs_description = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.programs_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.list_of_language_list.forEach((val) => {
      length += ProgramLanguageList.getMessageSize(val);
    });
    object.programs_description.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 12;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_programs_manager/GetProgramListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2eeab6a7fdb2c21404eeccc7eb573f85';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] programs_names
    niryo_robot_programs_manager/ProgramLanguageList[] list_of_language_list
    string[] programs_description
    
    
    
    ================================================================================
    MSG: niryo_robot_programs_manager/ProgramLanguageList
    niryo_robot_programs_manager/ProgramLanguage[] language_list
    
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
    const resolved = new GetProgramListResponse(null);
    if (msg.programs_names !== undefined) {
      resolved.programs_names = msg.programs_names;
    }
    else {
      resolved.programs_names = []
    }

    if (msg.list_of_language_list !== undefined) {
      resolved.list_of_language_list = new Array(msg.list_of_language_list.length);
      for (let i = 0; i < resolved.list_of_language_list.length; ++i) {
        resolved.list_of_language_list[i] = ProgramLanguageList.Resolve(msg.list_of_language_list[i]);
      }
    }
    else {
      resolved.list_of_language_list = []
    }

    if (msg.programs_description !== undefined) {
      resolved.programs_description = msg.programs_description;
    }
    else {
      resolved.programs_description = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetProgramListRequest,
  Response: GetProgramListResponse,
  md5sum() { return '4dfd49d0b1eeafdb4a0d480996fbd9b9'; },
  datatype() { return 'niryo_robot_programs_manager/GetProgramList'; }
};
