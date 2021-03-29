from numpy import *
import cv2
import ctypes
image1=cv2.imread('Lulu_0.jpg')
image=cv2.resize(image1,dsize=(300,300))
width=image.shape[0]
height=image.shape[1]
redfile = open('redfloating.txt','w')
greenfile=open('greenfloating.txt','w')
bluefile=open('bluefloating.txt','w')
for i in range(0,height):
    for j in range(0,width):
        red = image[i,j][2]
        green = image[i,j][1]
        blue = image[i,j][0]

        temp1=bin(ctypes.c_uint.from_buffer(ctypes.c_float(red)).value)
        redfile.write(temp1[2:])
        redfile.write("\n")

        temp2=bin(ctypes.c_uint.from_buffer(ctypes.c_float(green)).value)
        greenfile.write(temp2[2:])
        greenfile.write("\n")

        temp3=bin(ctypes.c_uint.from_buffer(ctypes.c_float(blue)).value)
        bluefile.write(temp3[2:])
        bluefile.write("\n")
cv2.imwrite('Lulu_small.jpg',image)
cv2.imshow('Lulu smal',image)
redfile.close()
greenfile.close()
bluefile.close()
cv2.waitKey()
cv2.destroyAllWindows()