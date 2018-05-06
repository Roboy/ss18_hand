# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_communication_control/ControlLeds.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class ControlLeds(genpy.Message):
  _md5sum = "cbdf6d76365c7274e13bc5d8007f65ca"
  _type = "roboy_communication_control/ControlLeds"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int16 mode
int32 duration #seconds
"""
  __slots__ = ['mode','duration']
  _slot_types = ['int16','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       mode,duration

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ControlLeds, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.mode is None:
        self.mode = 0
      if self.duration is None:
        self.duration = 0
    else:
      self.mode = 0
      self.duration = 0

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
      buff.write(_get_struct_hi().pack(_x.mode, _x.duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.mode, _x.duration,) = _get_struct_hi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_hi().pack(_x.mode, _x.duration))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.mode, _x.duration,) = _get_struct_hi().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_hi = None
def _get_struct_hi():
    global _struct_hi
    if _struct_hi is None:
        _struct_hi = struct.Struct("<hi")
    return _struct_hi
