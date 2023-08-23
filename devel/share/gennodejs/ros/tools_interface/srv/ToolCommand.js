// Auto-generated. Do not edit!

// (in-package tools_interface.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ToolCommandRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.position = null;
      this.speed = null;
      this.hold_torque = null;
      this.max_torque = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = 0;
      }
      if (initObj.hasOwnProperty('speed')) {
        this.speed = initObj.speed
      }
      else {
        this.speed = 0;
      }
      if (initObj.hasOwnProperty('hold_torque')) {
        this.hold_torque = initObj.hold_torque
      }
      else {
        this.hold_torque = 0;
      }
      if (initObj.hasOwnProperty('max_torque')) {
        this.max_torque = initObj.max_torque
      }
      else {
        this.max_torque = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ToolCommandRequest
    // Serialize message field [id]
    bufferOffset = _serializer.uint8(obj.id, buffer, bufferOffset);
    // Serialize message field [position]
    bufferOffset = _serializer.uint16(obj.position, buffer, bufferOffset);
    // Serialize message field [speed]
    bufferOffset = _serializer.uint16(obj.speed, buffer, bufferOffset);
    // Serialize message field [hold_torque]
    bufferOffset = _serializer.int16(obj.hold_torque, buffer, bufferOffset);
    // Serialize message field [max_torque]
    bufferOffset = _serializer.int16(obj.max_torque, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolCommandRequest
    let len;
    let data = new ToolCommandRequest(null);
    // Deserialize message field [id]
    data.id = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [position]
    data.position = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [speed]
    data.speed = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [hold_torque]
    data.hold_torque = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [max_torque]
    data.max_torque = _deserializer.int16(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tools_interface/ToolCommandRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9eb25d4d47c290d3d0b45f7c888f3fbf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 id
    
    uint16 position
    uint16 speed
    int16 hold_torque
    int16 max_torque
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolCommandRequest(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = 0
    }

    if (msg.speed !== undefined) {
      resolved.speed = msg.speed;
    }
    else {
      resolved.speed = 0
    }

    if (msg.hold_torque !== undefined) {
      resolved.hold_torque = msg.hold_torque;
    }
    else {
      resolved.hold_torque = 0
    }

    if (msg.max_torque !== undefined) {
      resolved.max_torque = msg.max_torque;
    }
    else {
      resolved.max_torque = 0
    }

    return resolved;
    }
};

class ToolCommandResponse {
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
    // Serializes a message object of type ToolCommandResponse
    // Serialize message field [state]
    bufferOffset = _serializer.uint8(obj.state, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ToolCommandResponse
    let len;
    let data = new ToolCommandResponse(null);
    // Deserialize message field [state]
    data.state = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'tools_interface/ToolCommandResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '800f34bc468def1d86e2d42bea5648c0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 state
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ToolCommandResponse(null);
    if (msg.state !== undefined) {
      resolved.state = msg.state;
    }
    else {
      resolved.state = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: ToolCommandRequest,
  Response: ToolCommandResponse,
  md5sum() { return '470ae100e520424cd89af3569b932d47'; },
  datatype() { return 'tools_interface/ToolCommand'; }
};
