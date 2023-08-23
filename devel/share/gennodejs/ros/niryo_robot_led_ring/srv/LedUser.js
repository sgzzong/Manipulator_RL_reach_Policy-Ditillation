// Auto-generated. Do not edit!

// (in-package niryo_robot_led_ring.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LedRingAnimation = require('../msg/LedRingAnimation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class LedUserRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.animation_mode = null;
      this.colors = null;
      this.period = null;
      this.iterations = null;
      this.wait_end = null;
    }
    else {
      if (initObj.hasOwnProperty('animation_mode')) {
        this.animation_mode = initObj.animation_mode
      }
      else {
        this.animation_mode = new LedRingAnimation();
      }
      if (initObj.hasOwnProperty('colors')) {
        this.colors = initObj.colors
      }
      else {
        this.colors = [];
      }
      if (initObj.hasOwnProperty('period')) {
        this.period = initObj.period
      }
      else {
        this.period = 0.0;
      }
      if (initObj.hasOwnProperty('iterations')) {
        this.iterations = initObj.iterations
      }
      else {
        this.iterations = 0;
      }
      if (initObj.hasOwnProperty('wait_end')) {
        this.wait_end = initObj.wait_end
      }
      else {
        this.wait_end = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedUserRequest
    // Serialize message field [animation_mode]
    bufferOffset = LedRingAnimation.serialize(obj.animation_mode, buffer, bufferOffset);
    // Serialize message field [colors]
    // Serialize the length for message field [colors]
    bufferOffset = _serializer.uint32(obj.colors.length, buffer, bufferOffset);
    obj.colors.forEach((val) => {
      bufferOffset = std_msgs.msg.ColorRGBA.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [period]
    bufferOffset = _serializer.float64(obj.period, buffer, bufferOffset);
    // Serialize message field [iterations]
    bufferOffset = _serializer.int16(obj.iterations, buffer, bufferOffset);
    // Serialize message field [wait_end]
    bufferOffset = _serializer.bool(obj.wait_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedUserRequest
    let len;
    let data = new LedUserRequest(null);
    // Deserialize message field [animation_mode]
    data.animation_mode = LedRingAnimation.deserialize(buffer, bufferOffset);
    // Deserialize message field [colors]
    // Deserialize array length for message field [colors]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.colors = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.colors[i] = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [period]
    data.period = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [iterations]
    data.iterations = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [wait_end]
    data.wait_end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 16 * object.colors.length;
    return length + 19;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_led_ring/LedUserRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '15fd4f22b9dd479ce9c37b5525710c0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_led_ring/LedRingAnimation animation_mode
    
    std_msgs/ColorRGBA[] colors
    float64 period         # Time of 1 iteration in seconds
    int16 iterations
    
    # The service either wait for the iterations to finish to answer, 
    # or answer immediatly a Success after launching the function of Led Ring control. 
    # if iterations is 0, answer immediatly in any case, because the function never
    # stops.
    bool wait_end
    
    
    ================================================================================
    MSG: niryo_robot_led_ring/LedRingAnimation
    int32 NONE = -1
    int32 SOLID = 1
    int32 FLASHING = 2   
    int32 ALTERNATE = 3  
    int32 CHASE = 4       
    int32 COLOR_WIPE = 5   
    int32 RAINBOW = 6
    int32 RAINBOW_CYLE = 7
    int32 RAINBOW_CHASE = 8
    int32 GO_UP = 9
    int32 GO_UP_AND_DOWN = 10
    int32 BREATH = 11
    int32 SNAKE = 12
    int32 CUSTOM = 13
    
    int32 animation
    ================================================================================
    MSG: std_msgs/ColorRGBA
    float32 r
    float32 g
    float32 b
    float32 a
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedUserRequest(null);
    if (msg.animation_mode !== undefined) {
      resolved.animation_mode = LedRingAnimation.Resolve(msg.animation_mode)
    }
    else {
      resolved.animation_mode = new LedRingAnimation()
    }

    if (msg.colors !== undefined) {
      resolved.colors = new Array(msg.colors.length);
      for (let i = 0; i < resolved.colors.length; ++i) {
        resolved.colors[i] = std_msgs.msg.ColorRGBA.Resolve(msg.colors[i]);
      }
    }
    else {
      resolved.colors = []
    }

    if (msg.period !== undefined) {
      resolved.period = msg.period;
    }
    else {
      resolved.period = 0.0
    }

    if (msg.iterations !== undefined) {
      resolved.iterations = msg.iterations;
    }
    else {
      resolved.iterations = 0
    }

    if (msg.wait_end !== undefined) {
      resolved.wait_end = msg.wait_end;
    }
    else {
      resolved.wait_end = false
    }

    return resolved;
    }
};

class LedUserResponse {
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
    // Serializes a message object of type LedUserResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedUserResponse
    let len;
    let data = new LedUserResponse(null);
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
    return 'niryo_robot_led_ring/LedUserResponse';
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
    const resolved = new LedUserResponse(null);
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
  Request: LedUserRequest,
  Response: LedUserResponse,
  md5sum() { return '037e34fbf8489405d7b114484d01022f'; },
  datatype() { return 'niryo_robot_led_ring/LedUser'; }
};
