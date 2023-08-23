// Auto-generated. Do not edit!

// (in-package niryo_robot_sound.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let SoundObject = require('./SoundObject.js');

//-----------------------------------------------------------

class SoundList {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sounds = null;
    }
    else {
      if (initObj.hasOwnProperty('sounds')) {
        this.sounds = initObj.sounds
      }
      else {
        this.sounds = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SoundList
    // Serialize message field [sounds]
    // Serialize the length for message field [sounds]
    bufferOffset = _serializer.uint32(obj.sounds.length, buffer, bufferOffset);
    obj.sounds.forEach((val) => {
      bufferOffset = SoundObject.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SoundList
    let len;
    let data = new SoundList(null);
    // Deserialize message field [sounds]
    // Deserialize array length for message field [sounds]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.sounds = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.sounds[i] = SoundObject.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.sounds.forEach((val) => {
      length += SoundObject.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_sound/SoundList';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '05958294ca97e08c8d45a481537fb07d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_sound/SoundObject[] sounds
    ================================================================================
    MSG: niryo_robot_sound/SoundObject
    string name
    float64 duration
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SoundList(null);
    if (msg.sounds !== undefined) {
      resolved.sounds = new Array(msg.sounds.length);
      for (let i = 0; i < resolved.sounds.length; ++i) {
        resolved.sounds[i] = SoundObject.Resolve(msg.sounds[i]);
      }
    }
    else {
      resolved.sounds = []
    }

    return resolved;
    }
};

module.exports = SoundList;
