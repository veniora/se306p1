"""autogenerated by genmsg_py from DetermineLeaderRequest.msg. Do not edit."""
import roslib.message
import struct


class DetermineLeaderRequest(roslib.message.Message):
  _md5sum = "917b8dbb516d9bbc2a2db1284ea0242d"
  _type = "Project2Sample/DetermineLeaderRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 R_ID
float64 x
float64 y

"""
  __slots__ = ['R_ID','x','y']
  _slot_types = ['int64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       R_ID,x,y
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(DetermineLeaderRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.R_ID is None:
        self.R_ID = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
    else:
      self.R_ID = 0
      self.x = 0.
      self.y = 0.

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      _x = self
      buff.write(_struct_q2d.pack(_x.R_ID, _x.x, _x.y))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.R_ID, _x.x, _x.y,) = _struct_q2d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      _x = self
      buff.write(_struct_q2d.pack(_x.R_ID, _x.x, _x.y))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      _x = self
      start = end
      end += 24
      (_x.R_ID, _x.x, _x.y,) = _struct_q2d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_q2d = struct.Struct("<q2d")
"""autogenerated by genmsg_py from DetermineLeaderResponse.msg. Do not edit."""
import roslib.message
import struct


class DetermineLeaderResponse(roslib.message.Message):
  _md5sum = "9a19e38fe9eec7446f55395ce8cb0860"
  _type = "Project2Sample/DetermineLeaderResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 L_ID


"""
  __slots__ = ['L_ID']
  _slot_types = ['int64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       L_ID
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(DetermineLeaderResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.L_ID is None:
        self.L_ID = 0
    else:
      self.L_ID = 0

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    @param buff: buffer
    @type  buff: StringIO
    """
    try:
      buff.write(_struct_q.pack(self.L_ID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    @param str: byte array of serialized message
    @type  str: str
    """
    try:
      end = 0
      start = end
      end += 8
      (self.L_ID,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    @param buff: buffer
    @type  buff: StringIO
    @param numpy: numpy python module
    @type  numpy module
    """
    try:
      buff.write(_struct_q.pack(self.L_ID))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    @param str: byte array of serialized message
    @type  str: str
    @param numpy: numpy python module
    @type  numpy: module
    """
    try:
      end = 0
      start = end
      end += 8
      (self.L_ID,) = _struct_q.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_q = struct.Struct("<q")
class DetermineLeader(roslib.message.ServiceDefinition):
  _type          = 'Project2Sample/DetermineLeader'
  _md5sum = '4f1437fa9af42bdf3f40cbdc6ac98432'
  _request_class  = DetermineLeaderRequest
  _response_class = DetermineLeaderResponse
