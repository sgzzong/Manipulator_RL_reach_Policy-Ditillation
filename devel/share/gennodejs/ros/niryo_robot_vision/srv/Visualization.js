// Auto-generated. Do not edit!

// (in-package niryo_robot_vision.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class VisualizationRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.workspace = null;
      this.clearing = null;
    }
    else {
      if (initObj.hasOwnProperty('workspace')) {
        this.workspace = initObj.workspace
      }
      else {
        this.workspace = '';
      }
      if (initObj.hasOwnProperty('clearing')) {
        this.clearing = initObj.clearing
      }
      else {
        this.clearing = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisualizationRequest
    // Serialize message field [workspace]
    bufferOffset = _serializer.string(obj.workspace, buffer, bufferOffset);
    // Serialize message field [clearing]
    bufferOffset = _serializer.bool(obj.clearing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualizationRequest
    let len;
    let data = new VisualizationRequest(null);
    // Deserialize message field [workspace]
    data.workspace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [clearing]
    data.clearing = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.workspace);
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_vision/VisualizationRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab1a76ffa53dc45be6e78b20bb3e4d15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string workspace
    bool clearing
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualizationRequest(null);
    if (msg.workspace !== undefined) {
      resolved.workspace = msg.workspace;
    }
    else {
      resolved.workspace = ''
    }

    if (msg.clearing !== undefined) {
      resolved.clearing = msg.clearing;
    }
    else {
      resolved.clearing = false
    }

    return resolved;
    }
};

class VisualizationResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type VisualizationResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type VisualizationResponse
    let len;
    let data = new VisualizationResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_vision/VisualizationResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '86791dcf1de997ec7de5a0de7e4dcfcc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new VisualizationResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    return resolved;
    }
};

module.exports = {
  Request: VisualizationRequest,
  Response: VisualizationResponse,
  md5sum() { return '137ed21db0b20a9ae0eba8eb8afcd908'; },
  datatype() { return 'niryo_robot_vision/Visualization'; }
};
