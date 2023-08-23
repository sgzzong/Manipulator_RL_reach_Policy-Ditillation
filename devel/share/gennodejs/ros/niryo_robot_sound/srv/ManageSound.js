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

class ManageSoundRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sound_name = null;
      this.action = null;
      this.sound_data = null;
    }
    else {
      if (initObj.hasOwnProperty('sound_name')) {
        this.sound_name = initObj.sound_name
      }
      else {
        this.sound_name = '';
      }
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = 0;
      }
      if (initObj.hasOwnProperty('sound_data')) {
        this.sound_data = initObj.sound_data
      }
      else {
        this.sound_data = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageSoundRequest
    // Serialize message field [sound_name]
    bufferOffset = _serializer.string(obj.sound_name, buffer, bufferOffset);
    // Serialize message field [action]
    bufferOffset = _serializer.int8(obj.action, buffer, bufferOffset);
    // Serialize message field [sound_data]
    bufferOffset = _serializer.string(obj.sound_data, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageSoundRequest
    let len;
    let data = new ManageSoundRequest(null);
    // Deserialize message field [sound_name]
    data.sound_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [action]
    data.action = _deserializer.int8(buffer, bufferOffset);
    // Deserialize message field [sound_data]
    data.sound_data = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sound_name);
    length += _getByteLength(object.sound_data);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_sound/ManageSoundRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd206b05f5f80c762821ef2dc0ffb1339';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sound_name
    
    int8 ADD = 1
    int8 DELETE = 2
    int8 action
    
    # Data to add a new sound
    string sound_data
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageSoundRequest(null);
    if (msg.sound_name !== undefined) {
      resolved.sound_name = msg.sound_name;
    }
    else {
      resolved.sound_name = ''
    }

    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = 0
    }

    if (msg.sound_data !== undefined) {
      resolved.sound_data = msg.sound_data;
    }
    else {
      resolved.sound_data = ''
    }

    return resolved;
    }
};

// Constants for message
ManageSoundRequest.Constants = {
  ADD: 1,
  DELETE: 2,
}

class ManageSoundResponse {
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
    // Serializes a message object of type ManageSoundResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageSoundResponse
    let len;
    let data = new ManageSoundResponse(null);
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
    return 'niryo_robot_sound/ManageSoundResponse';
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
    const resolved = new ManageSoundResponse(null);
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
  Request: ManageSoundRequest,
  Response: ManageSoundResponse,
  md5sum() { return '4c96f2b7c9ccc8fcd4a9cc729611626b'; },
  datatype() { return 'niryo_robot_sound/ManageSound'; }
};
