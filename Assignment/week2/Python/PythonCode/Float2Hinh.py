import numpy as np
import cv2

from codecs import decode
import struct


grayfile = open('outGray.txt','r')
image=np.zeros((500,500,3),np.uint8)
redpixel=[]
greenpixel=[]
bluepixel=[]

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]
x=0
i=0
j=0
for r in grayfile:
    temp=bin_to_float(r)
    temp=int(temp)
    redpixel.append(temp)

for i in range (500):
    for j in range(500):
        image[i, j] = (redpixel[x], redpixel[x], redpixel[x])
        x =x+1

cv2.imwrite('Lulu_reborn.jpg',image)
cv2.imshow('Lulu_reborn',image)
temp=cv2.imread('Lulu_small.jpg')

cv2.imshow('LuLu_small',temp)
cv2.waitKey()
cv2.destroyAllWindows()


redfile.close()
greenfile.close()
bluefile.close()
grayfile.close()