// Auto-generated. Do not edit!

// (in-package niryo_robot_programs_manager.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ProgramLanguage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.used = null;
    }
    else {
      if (initObj.hasOwnProperty('used')) {
        this.used = initObj.used
      }
      else {
        this.used = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ProgramLanguage
    // Serialize message field [used]
    bufferOffset = _serializer.int8(obj.used, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ProgramLanguage
    let len;
    let data = new ProgramLanguage(null);
    // Deserialize message field [used]
    data.used = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_programs_manager/ProgramLanguage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '33b17f834c69f7d704c6f12913f8ef1a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new ProgramLanguage(null);
    if (msg.used !== undefined) {
      resolved.used = msg.used;
    }
    else {
      resolved.used = 0
    }

    return resolved;
    }
};

// Constants for message
ProgramLanguage.Constants = {
  NONE: -1,
  ALL: 0,
  PYTHON2: 1,
  PYTHON3: 2,
  BLOCKLY: 66,
}

module.exports = ProgramLanguage;
