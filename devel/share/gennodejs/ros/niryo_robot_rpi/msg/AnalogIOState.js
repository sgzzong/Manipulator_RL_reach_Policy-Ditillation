// Auto-generated. Do not edit!

// (in-package niryo_robot_rpi.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let AnalogIO = require('./AnalogIO.js');

//-----------------------------------------------------------

class AnalogIOState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.analog_inputs = null;
      this.analog_outputs = null;
    }
    else {
      if (initObj.hasOwnProperty('analog_inputs')) {
        this.analog_inputs = initObj.analog_inputs
      }
      else {
        this.analog_inputs = [];
      }
      if (initObj.hasOwnProperty('analog_outputs')) {
        this.analog_outputs = initObj.analog_outputs
      }
      else {
        this.analog_outputs = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnalogIOState
    // Serialize message field [analog_inputs]
    // Serialize the length for message field [analog_inputs]
    bufferOffset = _serializer.uint32(obj.analog_inputs.length, buffer, bufferOffset);
    obj.analog_inputs.forEach((val) => {
      bufferOffset = AnalogIO.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [analog_outputs]
    // Serialize the length for message field [analog_outputs]
    bufferOffset = _serializer.uint32(obj.analog_outputs.length, buffer, bufferOffset);
    obj.analog_outputs.forEach((val) => {
      bufferOffset = AnalogIO.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnalogIOState
    let len;
    let data = new AnalogIOState(null);
    // Deserialize message field [analog_inputs]
    // Deserialize array length for message field [analog_inputs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_inputs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_inputs[i] = AnalogIO.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [analog_outputs]
    // Deserialize array length for message field [analog_outputs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.analog_outputs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.analog_outputs[i] = AnalogIO.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.analog_inputs.forEach((val) => {
      length += AnalogIO.getMessageSize(val);
    });
    object.analog_outputs.forEach((val) => {
      length += AnalogIO.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_rpi/AnalogIOState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '50830703d75ba2ea72eb263ee99782e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_rpi/AnalogIO[] analog_inputs
    niryo_robot_rpi/AnalogIO[] analog_outputs
    
    
    
    ================================================================================
    MSG: niryo_robot_rpi/AnalogIO
    string name
    float64 value
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnalogIOState(null);
    if (msg.analog_inputs !== undefined) {
      resolved.analog_inputs = new Array(msg.analog_inputs.length);
      for (let i = 0; i < resolved.analog_inputs.length; ++i) {
        resolved.analog_inputs[i] = AnalogIO.Resolve(msg.analog_inputs[i]);
      }
    }
    else {
      resolved.analog_inputs = []
    }

    if (msg.analog_outputs !== undefined) {
      resolved.analog_outputs = new Array(msg.analog_outputs.length);
      for (let i = 0; i < resolved.analog_outputs.length; ++i) {
        resolved.analog_outputs[i] = AnalogIO.Resolve(msg.analog_outputs[i]);
      }
    }
    else {
      resolved.analog_outputs = []
    }

    return resolved;
    }
};

module.exports = AnalogIOState;
