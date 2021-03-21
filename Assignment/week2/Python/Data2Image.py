import numpy as np
import cv2

from codecs import decode
import struct

grayfile=open('outGray.txt','r')
image=np.zeros((500,500,3),np.uint8)
graypixel=[]

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]
x=0
i=0
j=0
for gray in grayfile:
    #redpixel.append(r)
    graypixel.append(int(bin_to_float(gray)*255))
print(graypixel)

for i in range (0,500):
    for j in range(0,500):
        image[i, j] = (graypixel[x], graypixel[x], graypixel[x])
        x =x+1


cv2.imwrite('Lulu_reborn.jpg',image)
cv2.imshow('Lulu_reborn',image)



cv2.waitKey()
cv2.destroyAllWindows()


grayfile.close()