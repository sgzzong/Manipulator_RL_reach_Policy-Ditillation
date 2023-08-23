// Auto-generated. Do not edit!

// (in-package niryo_robot_led_ring.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LedRingAnimation {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.animation = null;
    }
    else {
      if (initObj.hasOwnProperty('animation')) {
        this.animation = initObj.animation
      }
      else {
        this.animation = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LedRingAnimation
    // Serialize message field [animation]
    bufferOffset = _serializer.int32(obj.animation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LedRingAnimation
    let len;
    let data = new LedRingAnimation(null);
    // Deserialize message field [animation]
    data.animation = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_led_ring/LedRingAnimation';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2988219586581fda2dc251a25b0a4d08';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LedRingAnimation(null);
    if (msg.animation !== undefined) {
      resolved.animation = msg.animation;
    }
    else {
      resolved.animation = 0
    }

    return resolved;
    }
};

// Constants for message
LedRingAnimation.Constants = {
  NONE: -1,
  SOLID: 1,
  FLASHING: 2,
  ALTERNATE: 3,
  CHASE: 4,
  COLOR_WIPE: 5,
  RAINBOW: 6,
  RAINBOW_CYLE: 7,
  RAINBOW_CHASE: 8,
  GO_UP: 9,
  GO_UP_AND_DOWN: 10,
  BREATH: 11,
  SNAKE: 12,
  CUSTOM: 13,
}

module.exports = LedRingAnimation;
