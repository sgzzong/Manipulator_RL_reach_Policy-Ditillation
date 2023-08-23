// Auto-generated. Do not edit!

// (in-package niryo_robot_led_ring.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let LedRingAnimation = require('./LedRingAnimation.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LedRingStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.led_mode = null;
      this.animation_mode = null;
      this.animation_color = null;
    }
    else {
      if (initObj.hasOwnProperty('led_mode')) {
        this.led_mode = initObj.led_mode
      }
      else {
        this.led_mode = 0;
      }
      if (initObj.hasOwnProperty('animation_mode')) {
        this.animation_mode = initObj.animation_mode
      }
      else {
        this.animation_mode = new LedRingAnimation();
      }
      if (initObj.hasOwnProperty('animation_color')) {
        this.animation_color = initObj.animation_color
      }
      else {
        this.animation_color = new std_msgs.msg.ColorRGBA();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedRingStatus
    // Serialize message field [led_mode]
    bufferOffset = _serializer.int32(obj.led_mode, buffer, bufferOffset);
    // Serialize message field [animation_mode]
    bufferOffset = LedRingAnimation.serialize(obj.animation_mode, buffer, bufferOffset);
    // Serialize message field [animation_color]
    bufferOffset = std_msgs.msg.ColorRGBA.serialize(obj.animation_color, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedRingStatus
    let len;
    let data = new LedRingStatus(null);
    // Deserialize message field [led_mode]
    data.led_mode = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [animation_mode]
    data.animation_mode = LedRingAnimation.deserialize(buffer, bufferOffset);
    // Deserialize message field [animation_color]
    data.animation_color = std_msgs.msg.ColorRGBA.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_led_ring/LedRingStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8451a2850ab998f7e23e7fb04868d7d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 ROBOT_STATUS = 1
    int32 USER = 2
    
    int32 led_mode
    
    niryo_robot_led_ring/LedRingAnimation animation_mode
    
    std_msgs/ColorRGBA animation_color # except for rainbow related animation
    
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
    const resolved = new LedRingStatus(null);
    if (msg.led_mode !== undefined) {
      resolved.led_mode = msg.led_mode;
    }
    else {
      resolved.led_mode = 0
    }

    if (msg.animation_mode !== undefined) {
      resolved.animation_mode = LedRingAnimation.Resolve(msg.animation_mode)
    }
    else {
      resolved.animation_mode = new LedRingAnimation()
    }

    if (msg.animation_color !== undefined) {
      resolved.animation_color = std_msgs.msg.ColorRGBA.Resolve(msg.animation_color)
    }
    else {
      resolved.animation_color = new std_msgs.msg.ColorRGBA()
    }

    return resolved;
    }
};

// Constants for message
LedRingStatus.Constants = {
  ROBOT_STATUS: 1,
  USER: 2,
}

module.exports = LedRingStatus;
