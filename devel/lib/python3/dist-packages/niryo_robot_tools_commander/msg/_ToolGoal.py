# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from niryo_robot_tools_commander/ToolGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import niryo_robot_tools_commander.msg

class ToolGoal(genpy.Message):
  _md5sum = "3bd9fd33848952f5721f5ff2a61f063d"
  _type = "niryo_robot_tools_commander/ToolGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# goal
niryo_robot_tools_commander/ToolCommand cmd

================================================================================
MSG: niryo_robot_tools_commander/ToolCommand
# Gripper
int8 OPEN_GRIPPER = 1
int8 CLOSE_GRIPPER = 2

# Vacuump pump
int8 PULL_AIR_VACUUM_PUMP = 10
int8 PUSH_AIR_VACUUM_PUMP = 11

# Tools controlled by digital I/Os
int8 SETUP_DIGITAL_IO = 20
int8 ACTIVATE_DIGITAL_IO = 21
int8 DEACTIVATE_DIGITAL_IO = 22

uint8 cmd_type

# Gripper1= 11, Gripper2=12, Gripper3=13, VaccuumPump=31, Electromagnet=30
int8 tool_id

# if gripper Ned1/One
uint16 speed

# if gripper Ned2
uint8 max_torque_percentage
uint8 hold_torque_percentage

# if vacuum pump or electromagnet grove
bool activate

# if tool is set by digital outputs (electromagnet)
string gpio
"""
  __slots__ = ['cmd']
  _slot_types = ['niryo_robot_tools_commander/ToolCommand']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       cmd

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ToolGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.cmd is None:
        self.cmd = niryo_robot_tools_commander.msg.ToolCommand()
    else:
      self.cmd = niryo_robot_tools_commander.msg.ToolCommand()

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_BbH3B().pack(_x.cmd.cmd_type, _x.cmd.tool_id, _x.cmd.speed, _x.cmd.max_torque_percentage, _x.cmd.hold_torque_percentage, _x.cmd.activate))
      _x = self.cmd.gpio
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cmd is None:
        self.cmd = niryo_robot_tools_commander.msg.ToolCommand()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.cmd.cmd_type, _x.cmd.tool_id, _x.cmd.speed, _x.cmd.max_torque_percentage, _x.cmd.hold_torque_percentage, _x.cmd.activate,) = _get_struct_BbH3B().unpack(str[start:end])
      self.cmd.activate = bool(self.cmd.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cmd.gpio = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cmd.gpio = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_BbH3B().pack(_x.cmd.cmd_type, _x.cmd.tool_id, _x.cmd.speed, _x.cmd.max_torque_percentage, _x.cmd.hold_torque_percentage, _x.cmd.activate))
      _x = self.cmd.gpio
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.cmd is None:
        self.cmd = niryo_robot_tools_commander.msg.ToolCommand()
      end = 0
      _x = self
      start = end
      end += 7
      (_x.cmd.cmd_type, _x.cmd.tool_id, _x.cmd.speed, _x.cmd.max_torque_percentage, _x.cmd.hold_torque_percentage, _x.cmd.activate,) = _get_struct_BbH3B().unpack(str[start:end])
      self.cmd.activate = bool(self.cmd.activate)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.cmd.gpio = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.cmd.gpio = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_BbH3B = None
def _get_struct_BbH3B():
    global _struct_BbH3B
    if _struct_BbH3B is None:
        _struct_BbH3B = struct.Struct("<BbH3B")
    return _struct_BbH3B