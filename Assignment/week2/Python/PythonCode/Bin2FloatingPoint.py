from codecs import decode
import struct
def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]


f = float(input())
print('Test value: %f' % f)
binary = float_to_bin(f)
print(' float_to_bin: %r' % binary)
floating_point = bin_to_float(binary)  # Round trip.
print(' bin_to_float: %f\n' % floating_point)