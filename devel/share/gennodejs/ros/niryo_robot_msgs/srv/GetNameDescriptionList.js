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

class GetNameDescriptionListRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNameDescriptionListRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNameDescriptionListRequest
    let len;
    let data = new GetNameDescriptionListRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetNameDescriptionListRequest';
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
    const resolved = new GetNameDescriptionListRequest(null);
    return resolved;
    }
};

class GetNameDescriptionListResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.name_list = null;
      this.description_list = null;
    }
    else {
      if (initObj.hasOwnProperty('name_list')) {
        this.name_list = initObj.name_list
      }
      else {
        this.name_list = [];
      }
      if (initObj.hasOwnProperty('description_list')) {
        this.description_list = initObj.description_list
      }
      else {
        this.description_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetNameDescriptionListResponse
    // Serialize message field [name_list]
    bufferOffset = _arraySerializer.string(obj.name_list, buffer, bufferOffset, null);
    // Serialize message field [description_list]
    bufferOffset = _arraySerializer.string(obj.description_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetNameDescriptionListResponse
    let len;
    let data = new GetNameDescriptionListResponse(null);
    // Deserialize message field [name_list]
    data.name_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [description_list]
    data.description_list = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.name_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    object.description_list.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_msgs/GetNameDescriptionListResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '5361969a38863a729ef2e599380538df';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] name_list
    string[] description_list
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetNameDescriptionListResponse(null);
    if (msg.name_list !== undefined) {
      resolved.name_list = msg.name_list;
    }
    else {
      resolved.name_list = []
    }

    if (msg.description_list !== undefined) {
      resolved.description_list = msg.description_list;
    }
    else {
      resolved.description_list = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetNameDescriptionListRequest,
  Response: GetNameDescriptionListResponse,
  md5sum() { return '5361969a38863a729ef2e599380538df'; },
  datatype() { return 'niryo_robot_msgs/GetNameDescriptionList'; }
};
