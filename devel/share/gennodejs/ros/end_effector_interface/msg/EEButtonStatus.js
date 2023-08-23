// Auto-generated. Do not edit!

// (in-package end_effector_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class EEButtonStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EEButtonStatus
    // Serialize message field [action]
    bufferOffset = _serializer.uint8(obj.action, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EEButtonStatus
    let len;
    let data = new EEButtonStatus(null);
    // Deserialize message field [action]
    data.action = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'end_effector_interface/EEButtonStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '253c0270ed9bd9ba0d603239e8a42447';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 HANDLE_HELD_ACTION=0
    uint8 LONG_PUSH_ACTION=1
    uint8 SINGLE_PUSH_ACTION=2
    uint8 DOUBLE_PUSH_ACTION=3
    uint8 NO_ACTION=100
    
    uint8 action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EEButtonStatus(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    return resolved;
    }
};

// Constants for message
EEButtonStatus.Constants = {
  HANDLE_HELD_ACTION: 0,
  LONG_PUSH_ACTION: 1,
  SINGLE_PUSH_ACTION: 2,
  DOUBLE_PUSH_ACTION: 3,
  NO_ACTION: 100,
}

module.exports = EEButtonStatus;
