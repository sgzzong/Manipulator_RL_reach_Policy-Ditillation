// Auto-generated. Do not edit!

// (in-package niryo_robot_arm_commander.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

let trajectory_msgs = _finder('trajectory_msgs');

//-----------------------------------------------------------

class ComputeTrajectoryRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.list_poses = null;
      this.dist_smoothing = null;
    }
    else {
      if (initObj.hasOwnProperty('list_poses')) {
        this.list_poses = initObj.list_poses
      }
      else {
        this.list_poses = [];
      }
      if (initObj.hasOwnProperty('dist_smoothing')) {
        this.dist_smoothing = initObj.dist_smoothing
      }
      else {
        this.dist_smoothing = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeTrajectoryRequest
    // Serialize message field [list_poses]
    // Serialize the length for message field [list_poses]
    bufferOffset = _serializer.uint32(obj.list_poses.length, buffer, bufferOffset);
    obj.list_poses.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Pose.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [dist_smoothing]
    bufferOffset = _serializer.float32(obj.dist_smoothing, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeTrajectoryRequest
    let len;
    let data = new ComputeTrajectoryRequest(null);
    // Deserialize message field [list_poses]
    // Deserialize array length for message field [list_poses]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.list_poses = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.list_poses[i] = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [dist_smoothing]
    data.dist_smoothing = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 56 * object.list_poses.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/ComputeTrajectoryRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e2b372516f53d72d2c5df3a3bbcf8bfc';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    geometry_msgs/Pose[] list_poses
    float32 dist_smoothing
    
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeTrajectoryRequest(null);
    if (msg.list_poses !== undefined) {
      resolved.list_poses = new Array(msg.list_poses.length);
      for (let i = 0; i < resolved.list_poses.length; ++i) {
        resolved.list_poses[i] = geometry_msgs.msg.Pose.Resolve(msg.list_poses[i]);
      }
    }
    else {
      resolved.list_poses = []
    }

    if (msg.dist_smoothing !== undefined) {
      resolved.dist_smoothing = msg.dist_smoothing;
    }
    else {
      resolved.dist_smoothing = 0.0
    }

    return resolved;
    }
};

class ComputeTrajectoryResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.status = null;
      this.message = null;
      this.trajectory = null;
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
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = new trajectory_msgs.msg.JointTrajectory();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ComputeTrajectoryResponse
    // Serialize message field [status]
    bufferOffset = _serializer.int32(obj.status, buffer, bufferOffset);
    // Serialize message field [message]
    bufferOffset = _serializer.string(obj.message, buffer, bufferOffset);
    // Serialize message field [trajectory]
    bufferOffset = trajectory_msgs.msg.JointTrajectory.serialize(obj.trajectory, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ComputeTrajectoryResponse
    let len;
    let data = new ComputeTrajectoryResponse(null);
    // Deserialize message field [status]
    data.status = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [message]
    data.message = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [trajectory]
    data.trajectory = trajectory_msgs.msg.JointTrajectory.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.message);
    length += trajectory_msgs.msg.JointTrajectory.getMessageSize(object.trajectory);
    return length + 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'niryo_robot_arm_commander/ComputeTrajectoryResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c60cb6b9df3a379bd539b5508c845ae6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    int32 status
    string message
    trajectory_msgs/JointTrajectory trajectory
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectory
    Header header
    string[] joint_names
    JointTrajectoryPoint[] points
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: trajectory_msgs/JointTrajectoryPoint
    # Each trajectory point specifies either positions[, velocities[, accelerations]]
    # or positions[, effort] for the trajectory to be executed.
    # All specified values are in the same order as the joint names in JointTrajectory.msg
    
    float64[] positions
    float64[] velocities
    float64[] accelerations
    float64[] effort
    duration time_from_start
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ComputeTrajectoryResponse(null);
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

    if (msg.trajectory !== undefined) {
      resolved.trajectory = trajectory_msgs.msg.JointTrajectory.Resolve(msg.trajectory)
    }
    else {
      resolved.trajectory = new trajectory_msgs.msg.JointTrajectory()
    }

    return resolved;
    }
};

module.exports = {
  Request: ComputeTrajectoryRequest,
  Response: ComputeTrajectoryResponse,
  md5sum() { return '927443127076e7791a4d6aaadcb8af16'; },
  datatype() { return 'niryo_robot_arm_commander/ComputeTrajectory'; }
};
