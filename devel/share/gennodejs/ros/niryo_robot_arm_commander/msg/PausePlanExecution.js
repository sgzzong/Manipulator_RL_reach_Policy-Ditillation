// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class PausePlanExecution {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.state = null;
    }
    else {
      if (initObj.hasOwnProperty('state')) {
        this.state = initObj.state
      }
      else {
        this.state = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PausePlanExecution
    // Serialize message field [state]
    bufferOffset = _serializer.int8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PausePlanExecution
    let len;
    let data = new PausePlanExecution(null);
    // Deserialize message field [state]
    data.state = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_arm_commander/PausePlanExecution';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f975633a84efe7236e13f4ac21d873f4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int8 STANDBY = 0
    int8 PLAY = 1
    int8 PAUSE = 2
    int8 RESUME = 3
    int8 CANCEL = 4
    
    float64 PAUSE_TIMEOUT = 30.0
    
    int8 state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PausePlanExecution(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

// Constants for message
PausePlanExecution.Constants = {
  STANDBY: 0,
  PLAY: 1,
  PAUSE: 2,
  RESUME: 3,
  CANCEL: 4,
  PAUSE_TIMEOUT: 30.0,
}

module.exports = PausePlanExecution;
