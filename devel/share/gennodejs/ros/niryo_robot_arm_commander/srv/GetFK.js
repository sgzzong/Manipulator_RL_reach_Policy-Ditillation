// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.srv)


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

class GetFKRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joints = null;
    }
    else {
      if (initObj.hasOwnProperty('joints')) {
        this.joints = initObj.joints
      }
      else {
        this.joints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GetFKRequest
    // Serialize message field [joints]
    bufferOffset = _arraySerializer.float32(obj.joints, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKRequest
    let len;
    let data = new GetFKRequest(null);
    // Deserialize message field [joints]
    data.joints = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.joints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetFKRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2a0e438b445b98def0f0ba6a2a85f58';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] joints
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GetFKRequest(null);
    if (msg.joints !== undefined) {
      resolved.joints = msg.joints;
    }
    else {
      resolved.joints = []
    }

    return resolved;
    }
};

class GetFKResponse {
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
    // Serializes a message object of type GetFKResponse
    // Serialize message field [pose]
    bufferOffset = niryo_robot_msgs.msg.RobotState.serialize(obj.pose, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GetFKResponse
    let len;
    let data = new GetFKResponse(null);
    // Deserialize message field [pose]
    data.pose = niryo_robot_msgs.msg.RobotState.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 136;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/GetFKResponse';
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
    const resolved = new GetFKResponse(null);
    if (msg.pose !== undefined) {
      resolved.pose = niryo_robot_msgs.msg.RobotState.Resolve(msg.pose)
    }
    else {
      resolved.pose = new niryo_robot_msgs.msg.RobotState()
    }

    return resolved;
    }
};

module.exports = {
  Request: GetFKRequest,
  Response: GetFKResponse,
  md5sum() { return '4f539bf98a6c903b06a0f551c15e98a8'; },
  datatype() { return 'niryo_robot_arm_commander/GetFK'; }
};
