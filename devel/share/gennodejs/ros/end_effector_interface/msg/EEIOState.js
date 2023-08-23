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

class EEIOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.digital_input = null;
      this.digital_output = null;
    }
    else {
      if (initObj.hasOwnProperty('digital_input')) {
        this.digital_input = initObj.digital_input
      }
      else {
        this.digital_input = false;
      }
      if (initObj.hasOwnProperty('digital_output')) {
        this.digital_output = initObj.digital_output
      }
      else {
        this.digital_output = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type EEIOState
    // Serialize message field [digital_input]
    bufferOffset = _serializer.bool(obj.digital_input, buffer, bufferOffset);
    // Serialize message field [digital_output]
    bufferOffset = _serializer.bool(obj.digital_output, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type EEIOState
    let len;
    let data = new EEIOState(null);
    // Deserialize message field [digital_input]
    data.digital_input = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [digital_output]
    data.digital_output = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'end_effector_interface/EEIOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '809bceb7a033605762abfa0c8d28d0ad';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool digital_input
    bool digital_output
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new EEIOState(null);
    if (msg.digital_input !== undefined) {
      resolved.digital_input = msg.digital_input;
    }
    else {
      resolved.digital_input = false
    }

    if (msg.digital_output !== undefined) {
      resolved.digital_output = msg.digital_output;
    }
    else {
      resolved.digital_output = false
    }

    return resolved;
    }
};

module.exports = EEIOState;
