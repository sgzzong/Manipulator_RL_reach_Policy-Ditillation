// Auto-generated. Do not edit!

// (in-package niryo_robot_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetStringListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStringListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStringListRequest
    let len;
    let data = new GetStringListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetStringListRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStringListRequest(null);
    return resolved;
    }
};

class GetStringListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.string_list = null;
    }
    else {
      if (initObj.hasOwnProperty('string_list')) {
        this.string_list = initObj.string_list
      }
      else {
        this.string_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetStringListResponse
    // Serialize message field [string_list]
    bufferOffset = _arraySerializer.string(obj.string_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetStringListResponse
    let len;
    let data = new GetStringListResponse(null);
    // Deserialize message field [string_list]
    data.string_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.string_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetStringListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b98f2fc9ff4290143d964bc0d59df60a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] string_list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetStringListResponse(null);
    if (msg.string_list !== undefined) {
      resolved.string_list = msg.string_list;
    }
    else {
      resolved.string_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetStringListRequest,
  Response: GetStringListResponse,
  md5sum() { return 'b98f2fc9ff4290143d964bc0d59df60a'; },
  datatype() { return 'niryo_robot_msgs/GetStringList'; }
};
