"""autogenerated by genmsg_py from Rotation.msg. Do not edit."""
import roslib.message
import struct


class Rotation(roslib.message.Message):
  _md5sum = "18977f85e8cc6df4b534dee960292b05"
  _type = "Project2Sample/Rotation"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int64 R_ID
float64 oldx
float64 oldy
float64 newx
float64 newy

"""
  __slots__ = ['R_ID','oldx','oldy','newx','newy']
  _slot_types = ['int64','float64','float64','float64','float64']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.
    
    The available fields are:
       R_ID,oldx,oldy,newx,newy
    
    @param args: complete set of field values, in .msg order
    @param kwds: use keyword arguments corresponding to message field names
    to set specific fields. 
    """
    if args or kwds:
      super(Rotation, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.R_ID is None:
        self.R_ID = 0
      if self.oldx is None:
        self.oldx = 0.
      if self.oldy is None:
        self.oldy = 0.
      if self.newx is None:
        self.newx = 0.
      if self.newy is None:
        self.newy = 0.
    else:
      self.R_ID = 0
      self.oldx = 0.
      self.oldy = 0.
      self.newx = 0.
      self.newy = 0.

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
      buff.write(_struct_q4d.pack(_x.R_ID, _x.oldx, _x.oldy, _x.newx, _x.newy))
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
      end += 40
      (_x.R_ID, _x.oldx, _x.oldy, _x.newx, _x.newy,) = _struct_q4d.unpack(str[start:end])
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
      buff.write(_struct_q4d.pack(_x.R_ID, _x.oldx, _x.oldy, _x.newx, _x.newy))
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
      end += 40
      (_x.R_ID, _x.oldx, _x.oldy, _x.newx, _x.newy,) = _struct_q4d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise roslib.message.DeserializationError(e) #most likely buffer underfill

_struct_I = roslib.message.struct_I
_struct_q4d = struct.Struct("<q4d")
