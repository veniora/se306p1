"""autogenerated by genmsg_py from R_ID.msg. Do not edit."""
import roslib.message
import struct


class R_ID(roslib.message.Message):
  _md5sum = "0d8e9b56042db3c74c526e12bb684730"
  _type = "Project2Sample/R_ID"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 R_ID
int64 Group_ID
int64 Pos_ID
float64 x
float64 y
float64 theta
float64 leaderTheta
"""
  __slots__ = ['R_ID','Group_ID','Pos_ID','x','y','theta','leaderTheta']
  _slot_types = ['int64','int64','int64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       R_ID,Group_ID,Pos_ID,x,y,theta,leaderTheta
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(R_ID, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.R_ID is None:
        self.R_ID = 0
      if self.Group_ID is None:
        self.Group_ID = 0
      if self.Pos_ID is None:
        self.Pos_ID = 0
      if self.x is None:
        self.x = 0.
      if self.y is None:
        self.y = 0.
      if self.theta is None:
        self.theta = 0.
      if self.leaderTheta is None:
        self.leaderTheta = 0.
    else:
      self.R_ID = 0
      self.Group_ID = 0
      self.Pos_ID = 0
      self.x = 0.
      self.y = 0.
      self.theta = 0.
      self.leaderTheta = 0.

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
      buff.write(_struct_3q4d.pack(_x.R_ID, _x.Group_ID, _x.Pos_ID, _x.x, _x.y, _x.theta, _x.leaderTheta))
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
      end += 56
      (_x.R_ID, _x.Group_ID, _x.Pos_ID, _x.x, _x.y, _x.theta, _x.leaderTheta,) = _struct_3q4d.unpack(str[start:end])
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
      buff.write(_struct_3q4d.pack(_x.R_ID, _x.Group_ID, _x.Pos_ID, _x.x, _x.y, _x.theta, _x.leaderTheta))
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
      end += 56
      (_x.R_ID, _x.Group_ID, _x.Pos_ID, _x.x, _x.y, _x.theta, _x.leaderTheta,) = _struct_3q4d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_3q4d = struct.Struct("<3q4d")
