// Auto-generated. Do not edit!

// (in-package niryo_robot_poses_handlers.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let niryo_robot_msgs = _finder('niryo_robot_msgs');

//-----------------------------------------------------------

class GetTargetPoseRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.workspace = null;
      this.height_offset = null;
      this.x_rel = null;
      this.y_rel = null;
      this.yaw_rel = null;
    }
    else {
      if (initObj.hasOwnProperty('workspace')) {
        this.workspace = initObj.workspace
      }
      else {
        this.workspace = '';
      }
      if (initObj.hasOwnProperty('height_offset')) {
        this.height_offset = initObj.height_offset
      }
      else {
        this.height_offset = 0.0;
      }
      if (initObj.hasOwnProperty('x_rel')) {
        this.x_rel = initObj.x_rel
      }
      else {
        this.x_rel = 0.0;
      }
      if (initObj.hasOwnProperty('y_rel')) {
        this.y_rel = initObj.y_rel
      }
      else {
        this.y_rel = 0.0;
      }
      if (initObj.hasOwnProperty('yaw_rel')) {
        this.yaw_rel = initObj.yaw_rel
      }
      else {
        this.yaw_rel = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseRequest
    // Serialize message field [workspace]
    bufferOffset = _serializer.string(obj.workspace, buffer, bufferOffset);
    // Serialize message field [height_offset]
    bufferOffset = _serializer.float32(obj.height_offset, buffer, bufferOffset);
    // Serialize message field [x_rel]
    bufferOffset = _serializer.float32(obj.x_rel, buffer, bufferOffset);
    // Serialize message field [y_rel]
    bufferOffset = _serializer.float32(obj.y_rel, buffer, bufferOffset);
    // Serialize message field [yaw_rel]
    bufferOffset = _serializer.float32(obj.yaw_rel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseRequest
    let len;
    let data = new GetTargetPoseRequest(null);
    // Deserialize message field [workspace]
    data.workspace = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [height_offset]
    data.height_offset = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [x_rel]
    data.x_rel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [y_rel]
    data.y_rel = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [yaw_rel]
    data.yaw_rel = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.workspace);
    return length + 20;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetTargetPoseRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '66dd79e6ec965fd249546ec36952c7f5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string workspace
    float32 height_offset
    float32 x_rel
    float32 y_rel
    float32 yaw_rel
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetTargetPoseRequest(null);
    if (msg.workspace !== undefined) {
      resolved.workspace = msg.workspace;
    }
    else {
      resolved.workspace = ''
    }

    if (msg.height_offset !== undefined) {
      resolved.height_offset = msg.height_offset;
    }
    else {
      resolved.height_offset = 0.0
    }

    if (msg.x_rel !== undefined) {
      resolved.x_rel = msg.x_rel;
    }
    else {
      resolved.x_rel = 0.0
    }

    if (msg.y_rel !== undefined) {
      resolved.y_rel = msg.y_rel;
    }
    else {
      resolved.y_rel = 0.0
    }

    if (msg.yaw_rel !== undefined) {
      resolved.yaw_rel = msg.yaw_rel;
    }
    else {
      resolved.yaw_rel = 0.0
    }

    return resolved;
    }
};

class GetTargetPoseResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.target_pose = null;
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
      if (initObj.hasOwnProperty('target_pose')) {
        this.target_pose = initObj.target_pose
      }
      else {
        this.target_pose = new niryo_robot_msgs.msg.RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetTargetPoseResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [target_pose]
    bufferOffset = niryo_robot_msgs.msg.RobotState.serialize(obj.target_pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetTargetPoseResponse
    let len;
    let data = new GetTargetPoseResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_pose]
    data.target_pose = niryo_robot_msgs.msg.RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    return length + 144;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_poses_handlers/GetTargetPoseResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23d7739086dcafe0ad8609012bafc859';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 status
    string message
    niryo_robot_msgs/RobotState target_pose
    
    
    ================================================================================
    MSG: niryo_robot_msgs/RobotState
    geometry_msgs/Point position
    niryo_robot_msgs/RPY rpy
    geometry_msgs/Quaternion orientation
    
    geometry_msgs/Twist twist
    float64 tcp_speed
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
    const resolved = new GetTargetPoseResponse(null);
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

    if (msg.target_pose !== undefined) {
      resolved.target_pose = niryo_robot_msgs.msg.RobotState.Resolve(msg.target_pose)
    }
    else {
      resolved.target_pose = new niryo_robot_msgs.msg.RobotState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetTargetPoseRequest,
  Response: GetTargetPoseResponse,
  md5sum() { return 'efcedb79813666c14f4931b17845a40d'; },
  datatype() { return 'niryo_robot_poses_handlers/GetTargetPose'; }
};
