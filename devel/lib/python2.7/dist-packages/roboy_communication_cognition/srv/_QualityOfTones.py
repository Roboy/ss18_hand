# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_communication_cognition/QualityOfTonesRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class QualityOfTonesRequest(genpy.Message):
  _md5sum = "13a6b42b36123f6f155dd1e0562e1b13"
  _type = "roboy_communication_cognition/QualityOfTonesRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32 timeInMilliseconds
bool majorOnly
"""
  __slots__ = ['timeInMilliseconds','majorOnly']
  _slot_types = ['float32','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       timeInMilliseconds,majorOnly

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QualityOfTonesRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.timeInMilliseconds is None:
        self.timeInMilliseconds = 0.
      if self.majorOnly is None:
        self.majorOnly = False
    else:
      self.timeInMilliseconds = 0.
      self.majorOnly = False

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
      buff.write(_get_struct_fB().pack(_x.timeInMilliseconds, _x.majorOnly))
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
      end += 5
      (_x.timeInMilliseconds, _x.majorOnly,) = _get_struct_fB().unpack(str[start:end])
      self.majorOnly = bool(self.majorOnly)
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
      buff.write(_get_struct_fB().pack(_x.timeInMilliseconds, _x.majorOnly))
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
      end += 5
      (_x.timeInMilliseconds, _x.majorOnly,) = _get_struct_fB().unpack(str[start:end])
      self.majorOnly = bool(self.majorOnly)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fB = None
def _get_struct_fB():
    global _struct_fB
    if _struct_fB is None:
        _struct_fB = struct.Struct("<fB")
    return _struct_fB
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from roboy_communication_cognition/QualityOfTonesResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class QualityOfTonesResponse(genpy.Message):
  _md5sum = "b4e7a974e4548fd927305c07206fbfc6"
  _type = "roboy_communication_cognition/QualityOfTonesResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """float32[] quality
float32[] purity
float32 directionZ
float32[] directionY
bool hitPin

"""
  __slots__ = ['quality','purity','directionZ','directionY','hitPin']
  _slot_types = ['float32[]','float32[]','float32','float32[]','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       quality,purity,directionZ,directionY,hitPin

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(QualityOfTonesResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.quality is None:
        self.quality = []
      if self.purity is None:
        self.purity = []
      if self.directionZ is None:
        self.directionZ = 0.
      if self.directionY is None:
        self.directionY = []
      if self.hitPin is None:
        self.hitPin = False
    else:
      self.quality = []
      self.purity = []
      self.directionZ = 0.
      self.directionY = []
      self.hitPin = False

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
      length = len(self.quality)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.quality))
      length = len(self.purity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.purity))
      buff.write(_get_struct_f().pack(self.directionZ))
      length = len(self.directionY)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.pack(pattern, *self.directionY))
      buff.write(_get_struct_B().pack(self.hitPin))
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
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.quality = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.purity = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (self.directionZ,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.directionY = struct.unpack(pattern, str[start:end])
      start = end
      end += 1
      (self.hitPin,) = _get_struct_B().unpack(str[start:end])
      self.hitPin = bool(self.hitPin)
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
      length = len(self.quality)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.quality.tostring())
      length = len(self.purity)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.purity.tostring())
      buff.write(_get_struct_f().pack(self.directionZ))
      length = len(self.directionY)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.directionY.tostring())
      buff.write(_get_struct_B().pack(self.hitPin))
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
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.quality = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.purity = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 4
      (self.directionZ,) = _get_struct_f().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      end += struct.calcsize(pattern)
      self.directionY = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      start = end
      end += 1
      (self.hitPin,) = _get_struct_B().unpack(str[start:end])
      self.hitPin = bool(self.hitPin)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
class QualityOfTones(object):
  _type          = 'roboy_communication_cognition/QualityOfTones'
  _md5sum = 'b0819310d2b88551910c5d4d0c08bb51'
  _request_class  = QualityOfTonesRequest
  _response_class = QualityOfTonesResponse
