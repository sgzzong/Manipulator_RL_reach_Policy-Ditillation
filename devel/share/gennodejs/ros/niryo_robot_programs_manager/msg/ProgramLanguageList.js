// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ProgramLanguage = require('./ProgramLanguage.js');

//-----------------------------------------------------------

class ProgramLanguageList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.language_list = null;
    }
    else {
      if (initObj.hasOwnProperty('language_list')) {
        this.language_list = initObj.language_list
      }
      else {
        this.language_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProgramLanguageList
    // Serialize message field [language_list]
    // Serialize the length for message field [language_list]
    bufferOffset = _serializer.uint32(obj.language_list.length, buffer, bufferOffset);
    obj.language_list.forEach((val) => {
      bufferOffset = ProgramLanguage.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProgramLanguageList
    let len;
    let data = new ProgramLanguageList(null);
    // Deserialize message field [language_list]
    // Deserialize array length for message field [language_list]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.language_list = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.language_list[i] = ProgramLanguage.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.language_list.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_programs_manager/ProgramLanguageList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3bb60a31107853c4b43f43c3afc8faf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ProgramLanguageList(null);
    if (msg.language_list !== undefined) {
      resolved.language_list = new Array(msg.language_list.length);
      for (let i = 0; i < resolved.language_list.length; ++i) {
        resolved.language_list[i] = ProgramLanguage.Resolve(msg.language_list[i]);
      }
    }
    else {
      resolved.language_list = []
    }

    return resolved;
    }
};

module.exports = ProgramLanguageList;
