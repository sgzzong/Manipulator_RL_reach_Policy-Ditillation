// Auto-generated. Do not edit!

// (in-package niryo_robot_reports.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Service = require('../msg/Service.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class CheckConnectionRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.service = null;
    }
    else {
      if (initObj.hasOwnProperty('service')) {
        this.service = initObj.service
      }
      else {
        this.service = new Service();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckConnectionRequest
    // Serialize message field [service]
    bufferOffset = Service.serialize(obj.service, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckConnectionRequest
    let len;
    let data = new CheckConnectionRequest(null);
    // Deserialize message field [service]
    data.service = Service.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_reports/CheckConnectionRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe454b42d2accd355d005af092b3458b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Service service
    
    ================================================================================
    MSG: niryo_robot_reports/Service
    int8 DAILY_REPORTS = 0
    int8 TEST_REPORTS = 1
    int8 ALERT_REPORTS = 2
    int8 AUTO_DIAGNOSIS_REPORTS = 3
    
    int8 to_test
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckConnectionRequest(null);
    if (msg.service !== undefined) {
      resolved.service = Service.Resolve(msg.service)
    }
    else {
      resolved.service = new Service()
    }

    return resolved;
    }
};

class CheckConnectionResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.result = null;
    }
    else {
      if (initObj.hasOwnProperty('status')) {
        this.status = initObj.status
      }
      else {
        this.status = 0;
      }
      if (initObj.hasOwnProperty('result')) {
        this.result = initObj.result
      }
      else {
        this.result = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CheckConnectionResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [result]
    bufferOffset = _serializer.bool(obj.result, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CheckConnectionResponse
    let len;
    let data = new CheckConnectionResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [result]
    data.result = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_reports/CheckConnectionResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f4d58b9ad5eeb6e8cebeafe8940be1d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    bool result
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CheckConnectionResponse(null);
    if (msg.status !== undefined) {
      resolved.status = msg.status;
    }
    else {
      resolved.status = 0
    }

    if (msg.result !== undefined) {
      resolved.result = msg.result;
    }
    else {
      resolved.result = false
    }

    return resolved;
    }
};

module.exports = {
  Request: CheckConnectionRequest,
  Response: CheckConnectionResponse,
  md5sum() { return '601967d72fd39c22f6ae4773c148bd17'; },
  datatype() { return 'niryo_robot_reports/CheckConnection'; }
};
