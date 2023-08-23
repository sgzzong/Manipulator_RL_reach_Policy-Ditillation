// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Workspace = require('../msg/Workspace.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class ManageWorkspaceRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.cmd = null;
      this.workspace = null;
    }
    else {
      if (initObj.hasOwnProperty('cmd')) {
        this.cmd = initObj.cmd
      }
      else {
        this.cmd = 0;
      }
      if (initObj.hasOwnProperty('workspace')) {
        this.workspace = initObj.workspace
      }
      else {
        this.workspace = new Workspace();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ManageWorkspaceRequest
    // Serialize message field [cmd]
    bufferOffset = _serializer.int32(obj.cmd, buffer, bufferOffset);
    // Serialize message field [workspace]
    bufferOffset = Workspace.serialize(obj.workspace, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageWorkspaceRequest
    let len;
    let data = new ManageWorkspaceRequest(null);
    // Deserialize message field [cmd]
    data.cmd = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [workspace]
    data.workspace = Workspace.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += Workspace.getMessageSize(object.workspace);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/ManageWorkspaceRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f2c2460cba0c7ca7f95697e66028f8c9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 SAVE = 1
    int32 SAVE_WITH_POINTS = 2
    int32 DELETE = -1
    
    int32 cmd
    
    niryo_robot_poses_handlers/Workspace workspace
    
    
    ================================================================================
    MSG: niryo_robot_poses_handlers/Workspace
    string name # maximum lenght of workspace's name is 30 characters
    string description
    
    geometry_msgs/Point[] points
    niryo_robot_msgs/RobotState[] poses
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: niryo_robot_msgs/RobotState
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    
    geometry_msgs/Twist twist
    float64 tcp_speed
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
    const resolved = new ManageWorkspaceRequest(null);
    if (msg.cmd !== undefined) {
      resolved.cmd = msg.cmd;
    }
    else {
      resolved.cmd = 0
    }

    if (msg.workspace !== undefined) {
      resolved.workspace = Workspace.Resolve(msg.workspace)
    }
    else {
      resolved.workspace = new Workspace()
    }

    return resolved;
    }
};

// Constants for message
ManageWorkspaceRequest.Constants = {
  SAVE: 1,
  SAVE_WITH_POINTS: 2,
  DELETE: -1,
}

class ManageWorkspaceResponse {
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
    // Serializes a message object of type ManageWorkspaceResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ManageWorkspaceResponse
    let len;
    let data = new ManageWorkspaceResponse(null);
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
    return 'niryo_robot_poses_handlers/ManageWorkspaceResponse';
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
    const resolved = new ManageWorkspaceResponse(null);
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
  Request: ManageWorkspaceRequest,
  Response: ManageWorkspaceResponse,
  md5sum() { return '133fe29c11881f21fe8ab6e5383e730f'; },
  datatype() { return 'niryo_robot_poses_handlers/ManageWorkspace'; }
};
