// Auto-generated. Do not edit!

// (in-package niryo_robot_sound.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlaySoundRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sound_name = null;
      this.start_time_sec = null;
      this.end_time_sec = null;
      this.wait_end = null;
    }
    else {
      if (initObj.hasOwnProperty('sound_name')) {
        this.sound_name = initObj.sound_name
      }
      else {
        this.sound_name = '';
      }
      if (initObj.hasOwnProperty('start_time_sec')) {
        this.start_time_sec = initObj.start_time_sec
      }
      else {
        this.start_time_sec = 0.0;
      }
      if (initObj.hasOwnProperty('end_time_sec')) {
        this.end_time_sec = initObj.end_time_sec
      }
      else {
        this.end_time_sec = 0.0;
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
    // Serializes a message object of type PlaySoundRequest
    // Serialize message field [sound_name]
    bufferOffset = _serializer.string(obj.sound_name, buffer, bufferOffset);
    // Serialize message field [start_time_sec]
    bufferOffset = _serializer.float64(obj.start_time_sec, buffer, bufferOffset);
    // Serialize message field [end_time_sec]
    bufferOffset = _serializer.float64(obj.end_time_sec, buffer, bufferOffset);
    // Serialize message field [wait_end]
    bufferOffset = _serializer.bool(obj.wait_end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySoundRequest
    let len;
    let data = new PlaySoundRequest(null);
    // Deserialize message field [sound_name]
    data.sound_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [start_time_sec]
    data.start_time_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [end_time_sec]
    data.end_time_sec = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wait_end]
    data.wait_end = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sound_name);
    return length + 21;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_sound/PlaySoundRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '85cab4337aa462c58702589444fd5088';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sound_name
    
    float64 start_time_sec
    float64 end_time_sec  #if 0 or if end_time_sec>sound_duration the entire sound will be played
    
    bool wait_end
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PlaySoundRequest(null);
    if (msg.sound_name !== undefined) {
      resolved.sound_name = msg.sound_name;
    }
    else {
      resolved.sound_name = ''
    }

    if (msg.start_time_sec !== undefined) {
      resolved.start_time_sec = msg.start_time_sec;
    }
    else {
      resolved.start_time_sec = 0.0
    }

    if (msg.end_time_sec !== undefined) {
      resolved.end_time_sec = msg.end_time_sec;
    }
    else {
      resolved.end_time_sec = 0.0
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

class PlaySoundResponse {
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
    // Serializes a message object of type PlaySoundResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PlaySoundResponse
    let len;
    let data = new PlaySoundResponse(null);
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
    return 'niryo_robot_sound/PlaySoundResponse';
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
    const resolved = new PlaySoundResponse(null);
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
  Request: PlaySoundRequest,
  Response: PlaySoundResponse,
  md5sum() { return '5ee90888968337d1f5c1d1a00df1090c'; },
  datatype() { return 'niryo_robot_sound/PlaySound'; }
};
