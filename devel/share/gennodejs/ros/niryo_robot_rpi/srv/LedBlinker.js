// Auto-generated. Do not edit!

// (in-package niryo_robot_rpi.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedBlinkerRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.activate = null;
      this.frequency = null;
      this.color = null;
      this.blinker_duration = null;
    }
    else {
      if (initObj.hasOwnProperty('activate')) {
        this.activate = initObj.activate
      }
      else {
        this.activate = false;
      }
      if (initObj.hasOwnProperty('frequency')) {
        this.frequency = initObj.frequency
      }
      else {
        this.frequency = 0;
      }
      if (initObj.hasOwnProperty('color')) {
        this.color = initObj.color
      }
      else {
        this.color = 0;
      }
      if (initObj.hasOwnProperty('blinker_duration')) {
        this.blinker_duration = initObj.blinker_duration
      }
      else {
        this.blinker_duration = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedBlinkerRequest
    // Serialize message field [activate]
    bufferOffset = _serializer.bool(obj.activate, buffer, bufferOffset);
    // Serialize message field [frequency]
    bufferOffset = _serializer.uint8(obj.frequency, buffer, bufferOffset);
    // Serialize message field [color]
    bufferOffset = _serializer.uint8(obj.color, buffer, bufferOffset);
    // Serialize message field [blinker_duration]
    bufferOffset = _serializer.float32(obj.blinker_duration, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedBlinkerRequest
    let len;
    let data = new LedBlinkerRequest(null);
    // Deserialize message field [activate]
    data.activate = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frequency]
    data.frequency = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [color]
    data.color = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [blinker_duration]
    data.blinker_duration = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 7;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_rpi/LedBlinkerRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fa3d8cedc0dae639a111323faa9bebec';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 LED_OFF = 0
    uint8 LED_BLUE = 1
    uint8 LED_GREEN = 2
    uint8 LED_BLUE_GREEN = 3
    uint8 LED_RED = 4
    uint8 LED_PURPLE = 5
    uint8 LED_RED_GREEN = 6
    uint8 LED_WHITE = 7
    
    bool activate
    uint8 frequency # between 1hz and 100Hz
    uint8 color
    float32 blinker_duration # 0 for infinite
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedBlinkerRequest(null);
    if (msg.activate !== undefined) {
      resolved.activate = msg.activate;
    }
    else {
      resolved.activate = false
    }

    if (msg.frequency !== undefined) {
      resolved.frequency = msg.frequency;
    }
    else {
      resolved.frequency = 0
    }

    if (msg.color !== undefined) {
      resolved.color = msg.color;
    }
    else {
      resolved.color = 0
    }

    if (msg.blinker_duration !== undefined) {
      resolved.blinker_duration = msg.blinker_duration;
    }
    else {
      resolved.blinker_duration = 0.0
    }

    return resolved;
    }
};

// Constants for message
LedBlinkerRequest.Constants = {
  LED_OFF: 0,
  LED_BLUE: 1,
  LED_GREEN: 2,
  LED_BLUE_GREEN: 3,
  LED_RED: 4,
  LED_PURPLE: 5,
  LED_RED_GREEN: 6,
  LED_WHITE: 7,
}

class LedBlinkerResponse {
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
    // Serializes a message object of type LedBlinkerResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedBlinkerResponse
    let len;
    let data = new LedBlinkerResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_rpi/LedBlinkerResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2c1d00fb8b4e78420f43d93d5292a429';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedBlinkerResponse(null);
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
  Request: LedBlinkerRequest,
  Response: LedBlinkerResponse,
  md5sum() { return 'a9c225f56e57f38d3097de07bd306c80'; },
  datatype() { return 'niryo_robot_rpi/LedBlinker'; }
};
