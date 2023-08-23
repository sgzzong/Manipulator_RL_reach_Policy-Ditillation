// Auto-generated. Do not edit!

// (in-package conveyor_interface.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let ConveyorFeedback = require('./ConveyorFeedback.js');

//-----------------------------------------------------------

class ConveyorFeedbackArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.conveyors = null;
    }
    else {
      if (initObj.hasOwnProperty('conveyors')) {
        this.conveyors = initObj.conveyors
      }
      else {
        this.conveyors = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConveyorFeedbackArray
    // Serialize message field [conveyors]
    // Serialize the length for message field [conveyors]
    bufferOffset = _serializer.uint32(obj.conveyors.length, buffer, bufferOffset);
    obj.conveyors.forEach((val) => {
      bufferOffset = ConveyorFeedback.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConveyorFeedbackArray
    let len;
    let data = new ConveyorFeedbackArray(null);
    // Deserialize message field [conveyors]
    // Deserialize array length for message field [conveyors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.conveyors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.conveyors[i] = ConveyorFeedback.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 6 * object.conveyors.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'conveyor_interface/ConveyorFeedbackArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '40390fad55d7b855b36296e05b77db14';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    conveyor_interface/ConveyorFeedback[] conveyors
    ================================================================================
    MSG: conveyor_interface/ConveyorFeedback
    
    #Conveyor id ( either 12 or 18)
    uint8 conveyor_id
    #Conveyor Connection state ( if it is enabled) 
    bool connection_state
    # Conveyor Controls state : ON or OFF
    bool running
    # Conveyor Speed ( 1-> 100 %)
    int16 speed
    # Conveyor direction ( backward or forward)
    int8 direction
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConveyorFeedbackArray(null);
    if (msg.conveyors !== undefined) {
      resolved.conveyors = new Array(msg.conveyors.length);
      for (let i = 0; i < resolved.conveyors.length; ++i) {
        resolved.conveyors[i] = ConveyorFeedback.Resolve(msg.conveyors[i]);
      }
    }
    else {
      resolved.conveyors = []
    }

    return resolved;
    }
};

module.exports = ConveyorFeedbackArray;
