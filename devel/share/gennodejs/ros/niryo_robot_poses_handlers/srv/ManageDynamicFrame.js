// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DynamicFrame = require('../msg/DynamicFrame.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManageDynamicFrameRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.dynamic_frame = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('dynamic_frame')) {
        this.dynamic_frame = initObj.dynamic_frame
      }
      else {
        this.dynamic_frame = new DynamicFrame();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageDynamicFrameRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [dynamic_frame]
    bufferOffset = DynamicFrame.serialize(obj.dynamic_frame, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageDynamicFrameRequest
    let len;
    let data = new ManageDynamicFrameRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [dynamic_frame]
    data.dynamic_frame = DynamicFrame.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += DynamicFrame.getMessageSize(object.dynamic_frame);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/ManageDynamicFrameRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '194e43f959f6af7862f5bdb48d9859f0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SAVE = 1
    int32 SAVE_WITH_POINTS = 2
    int32 EDIT = 3
    int32 DELETE = -1
    
    int32 cmd
    
    niryo_robot_poses_handlers/DynamicFrame dynamic_frame
    
    
    ================================================================================
    MSG: niryo_robot_poses_handlers/DynamicFrame
    string name # maximum lenght of dynamic_frame's name is 30 characters
    string new_name
    string description
    bool belong_to_workspace
    
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    
    geometry_msgs/Point[] points
    niryo_robot_msgs/RobotState[] poses
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RPY
    # roll, pitch and yaw
    
    float64 roll
    float64 pitch
    float64 yaw
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    ================================================================================
    MSG: niryo_robot_msgs/RobotState
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    
    geometry_msgs/Twist twist
    float64 tcp_speed
    ================================================================================
    MSG: geometry_msgs/Twist
    # This expresses velocity in free space broken into its linear and angular parts.
    Vector3  linear
    Vector3  angular
    
    ================================================================================
    MSG: geometry_msgs/Vector3
    # This represents a vector in free space. 
    # It is only meant to represent a direction. Therefore, it does not
    # make sense to apply a translation to it (e.g., when applying a 
    # generic rigid transformation to a Vector3, tf2 will only apply the
    # rotation). If you want your data to be translatable too, use the
    # geometry_msgs/Point message instead.
    
    float64 x
    float64 y
    float64 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ManageDynamicFrameRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.dynamic_frame !== undefined) {
      resolved.dynamic_frame = DynamicFrame.Resolve(msg.dynamic_frame)
    }
    else {
      resolved.dynamic_frame = new DynamicFrame()
    }

    return resolved;
    }
};

// Constants for message
ManageDynamicFrameRequest.Constants = {
  SAVE: 1,
  SAVE_WITH_POINTS: 2,
  EDIT: 3,
  DELETE: -1,
}

class ManageDynamicFrameResponse {
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
    // Serializes a message object of type ManageDynamicFrameResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageDynamicFrameResponse
    let len;
    let data = new ManageDynamicFrameResponse(null);
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
    return 'niryo_robot_poses_handlers/ManageDynamicFrameResponse';
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
    const resolved = new ManageDynamicFrameResponse(null);
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
  Request: ManageDynamicFrameRequest,
  Response: ManageDynamicFrameResponse,
  md5sum() { return '39e0d902c65a5da5c59434304dc86dd9'; },
  datatype() { return 'niryo_robot_poses_handlers/ManageDynamicFrame'; }
};
