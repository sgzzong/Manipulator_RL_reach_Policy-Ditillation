// Auto-generated. Do not edit!

// (in-package niryo_robot_reports.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Service {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.to_test = null;
    }
    else {
      if (initObj.hasOwnProperty('to_test')) {
        this.to_test = initObj.to_test
      }
      else {
        this.to_test = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Service
    // Serialize message field [to_test]
    bufferOffset = _serializer.int8(obj.to_test, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Service
    let len;
    let data = new Service(null);
    // Deserialize message field [to_test]
    data.to_test = _deserializer.int8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a message object
    return 'niryo_robot_reports/Service';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2398aef25e17f178de798f7c32631bee';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Service(null);
    if (msg.to_test !== undefined) {
      resolved.to_test = msg.to_test;
    }
    else {
      resolved.to_test = 0
    }

    return resolved;
    }
};

// Constants for message
Service.Constants = {
  DAILY_REPORTS: 0,
  TEST_REPORTS: 1,
  ALERT_REPORTS: 2,
  AUTO_DIAGNOSIS_REPORTS: 3,
}

module.exports = Service;
