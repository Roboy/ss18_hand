# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_communication_middleware/DarkRoomStatistics.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class DarkRoomStatistics(genpy.Message):
  _md5sum = "7aa7daab9e7ff8fdfb2e001f35611191"
  _type = "roboy_communication_middleware/DarkRoomStatistics"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """string object_name
int32 lighthouse
float32[] updateFrequency_horizontal
float32[] updateFrequency_vertical"""
  __slots__ = ['object_name','lighthouse','updateFrequency_horizontal','updateFrequency_vertical']
  _slot_types = ['string','int32','float32[]','float32[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       object_name,lighthouse,updateFrequency_horizontal,updateFrequency_vertical

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(DarkRoomStatistics, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.object_name is None:
        self.object_name = ''
      if self.lighthouse is None:
        self.lighthouse = 0
      if self.updateFrequency_horizontal is None:
        self.updateFrequency_horizontal = []
      if self.updateFrequency_vertical is None:
        self.updateFrequency_vertical = []
    else:
      self.object_name = ''
      self.lighthouse = 0
      self.updateFrequency_horizontal = []
      self.updateFrequency_vertical = []

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
      _x = self.object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.lighthouse))
      length = len(self.updateFrequency_horizontal)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.updateFrequency_horizontal))
      length = len(self.updateFrequency_vertical)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.updateFrequency_vertical))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object_name = str[start:end].decode('utf-8')
      else:
        self.object_name = str[start:end]
      start = end
      end += 4
      (self.lighthouse,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.updateFrequency_horizontal = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.updateFrequency_vertical = struct.unpack(pattern, str[start:end])
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
      _x = self.object_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      buff.write(_get_struct_i().pack(self.lighthouse))
      length = len(self.updateFrequency_horizontal)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.updateFrequency_horizontal.tostring())
      length = len(self.updateFrequency_vertical)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.updateFrequency_vertical.tostring())
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.object_name = str[start:end].decode('utf-8')
      else:
        self.object_name = str[start:end]
      start = end
      end += 4
      (self.lighthouse,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.updateFrequency_horizontal = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.updateFrequency_vertical = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
