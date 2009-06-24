# This file was automatically generated by SWIG (http://www.swig.org).
# Version 1.3.36
#
# Don't modify this file, modify the SWIG interface instead.
# This file is compatible with both classic and new-style classes.

import _bpp_exceptions
import new
new_instancemethod = new.instancemethod
try:
    _swig_property = property
except NameError:
    pass # Python < 2.2 doesn't have 'property'.
def _swig_setattr_nondynamic(self,class_type,name,value,static=1):
    if (name == "thisown"): return self.this.own(value)
    if (name == "this"):
        if type(value).__name__ == 'PySwigObject':
            self.__dict__[name] = value
            return
    method = class_type.__swig_setmethods__.get(name,None)
    if method: return method(self,value)
    if (not static) or hasattr(self,name):
        self.__dict__[name] = value
    else:
        raise AttributeError("You cannot add attributes to %s" % self)

def _swig_setattr(self,class_type,name,value):
    return _swig_setattr_nondynamic(self,class_type,name,value,0)

def _swig_getattr(self,class_type,name):
    if (name == "thisown"): return self.this.own()
    method = class_type.__swig_getmethods__.get(name,None)
    if method: return method(self)
    raise AttributeError,name

def _swig_repr(self):
    try: strthis = "proxy of " + self.this.__repr__()
    except: strthis = ""
    return "<%s.%s; %s >" % (self.__class__.__module__, self.__class__.__name__, strthis,)

import types
try:
    _object = types.ObjectType
    _newclass = 1
except AttributeError:
    class _object : pass
    _newclass = 0
del types


class Exception(_object):
    __swig_setmethods__ = {}
    __setattr__ = lambda self, name, value: _swig_setattr(self, Exception, name, value)
    __swig_getmethods__ = {}
    __getattr__ = lambda self, name: _swig_getattr(self, Exception, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_Exception(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_Exception
    __del__ = lambda self : None;
    def what(*args): return _bpp_exceptions.Exception_what(*args)
Exception_swigregister = _bpp_exceptions.Exception_swigregister
Exception_swigregister(Exception)

class IOException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, IOException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, IOException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_IOException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_IOException
    __del__ = lambda self : None;
IOException_swigregister = _bpp_exceptions.IOException_swigregister
IOException_swigregister(IOException)

class NullPointerException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, NullPointerException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, NullPointerException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_NullPointerException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_NullPointerException
    __del__ = lambda self : None;
NullPointerException_swigregister = _bpp_exceptions.NullPointerException_swigregister
NullPointerException_swigregister(NullPointerException)

class ZeroDivisionException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, ZeroDivisionException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, ZeroDivisionException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_ZeroDivisionException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_ZeroDivisionException
    __del__ = lambda self : None;
ZeroDivisionException_swigregister = _bpp_exceptions.ZeroDivisionException_swigregister
ZeroDivisionException_swigregister(ZeroDivisionException)

class BadIntegerException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, BadIntegerException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, BadIntegerException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_BadIntegerException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_BadIntegerException
    __del__ = lambda self : None;
    def getBadInteger(*args): return _bpp_exceptions.BadIntegerException_getBadInteger(*args)
BadIntegerException_swigregister = _bpp_exceptions.BadIntegerException_swigregister
BadIntegerException_swigregister(BadIntegerException)

class BadNumberException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, BadNumberException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, BadNumberException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_BadNumberException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_BadNumberException
    __del__ = lambda self : None;
    def getBadNumber(*args): return _bpp_exceptions.BadNumberException_getBadNumber(*args)
BadNumberException_swigregister = _bpp_exceptions.BadNumberException_swigregister
BadNumberException_swigregister(BadNumberException)

class NumberFormatException(Exception):
    __swig_setmethods__ = {}
    for _s in [Exception]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, NumberFormatException, name, value)
    __swig_getmethods__ = {}
    for _s in [Exception]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, NumberFormatException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_NumberFormatException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_NumberFormatException
    __del__ = lambda self : None;
    def getBadNumber(*args): return _bpp_exceptions.NumberFormatException_getBadNumber(*args)
NumberFormatException_swigregister = _bpp_exceptions.NumberFormatException_swigregister
NumberFormatException_swigregister(NumberFormatException)

class IndexOutOfBoundsException(BadIntegerException):
    __swig_setmethods__ = {}
    for _s in [BadIntegerException]: __swig_setmethods__.update(getattr(_s,'__swig_setmethods__',{}))
    __setattr__ = lambda self, name, value: _swig_setattr(self, IndexOutOfBoundsException, name, value)
    __swig_getmethods__ = {}
    for _s in [BadIntegerException]: __swig_getmethods__.update(getattr(_s,'__swig_getmethods__',{}))
    __getattr__ = lambda self, name: _swig_getattr(self, IndexOutOfBoundsException, name)
    __repr__ = _swig_repr
    def __init__(self, *args): 
        this = _bpp_exceptions.new_IndexOutOfBoundsException(*args)
        try: self.this.append(this)
        except: self.this = this
    __swig_destroy__ = _bpp_exceptions.delete_IndexOutOfBoundsException
    __del__ = lambda self : None;
    def getBounds(*args): return _bpp_exceptions.IndexOutOfBoundsException_getBounds(*args)
IndexOutOfBoundsException_swigregister = _bpp_exceptions.IndexOutOfBoundsException_swigregister
IndexOutOfBoundsException_swigregister(IndexOutOfBoundsException)



