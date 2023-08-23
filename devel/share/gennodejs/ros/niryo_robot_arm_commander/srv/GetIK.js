// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let niryo_robot_msgs = _finder('niryo_robot_msgs');

//-----------------------------------------------------------


//-----------------------------------------------------------

class GetIKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pose = null;
    }
    else {
      if (initObj.hasOwnProperty('pose')) {
        this.pose = initObj.pose
      }
      else {
        this.pose = new niryo_robot_msgs.msg.RobotState();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKRequest
    // Serialize message field [pose]
    bufferOffset = niryo_robot_msgs.msg.RobotState.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKRequest
    let len;
    let data = new GetIKRequest(null);
    // Deserialize message field [pose]
    data.pose = niryo_robot_msgs.msg.RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 136;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetIKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1c262742eda7688d62d102f5b236cf47';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    niryo_robot_msgs/RobotState pose
    
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
    const resolved = new GetIKRequest(null);
    if (msg.pose !== undefined) {
      resolved.pose = niryo_robot_msgs.msg.RobotState.Resolve(msg.pose)
    }
    else {
      resolved.pose = new niryo_robot_msgs.msg.RobotState()
    }

    return resolved;
    }
};

class GetIKResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetIKResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetIKResponse
    let len;
    let data = new GetIKResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetIKResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7a580606c02ad2e31b84e45124744ba4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    float32[] joints
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetIKResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: GetIKRequest,
  Response: GetIKResponse,
  md5sum() { return '45576484cd6aed54d3d440c48b4c229e'; },
  datatype() { return 'niryo_robot_arm_commander/GetIK'; }
};
