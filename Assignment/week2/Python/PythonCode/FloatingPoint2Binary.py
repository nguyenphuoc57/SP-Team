import ctypes

a=float(input('Nhap:'))
temp=bin(ctypes.c_uint.from_buffer(ctypes.c_float(a)).value)
print(temp[2:])