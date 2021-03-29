import numpy as np
import cv2

from codecs import decode
import struct
redfile=open('redfile.txt','r')
greenfile=open('greenfile.txt','r')
bluefile=open('bluefile.txt','r')

grayfile=open('grayPython.txt','w')
image=np.zeros((500,500,3),np.uint8)
redpixel=[]
greenpixel=[]
bluepixel=[]

x=0
i=0
j=0
for r in redfile:
    redpixel.append(r)


for g in greenfile:
    greenpixel.append(g)


for b in bluefile:
   bluepixel.append(b)

for i in range (500):
    for j in range(500):
        image[i,j] = (bluepixel[x], greenpixel[x], redpixel[x])
        x =x+1
for i in range(0,500):
    for j in range(0,500):
        r = image[i,j][2]
        g = image[i,j][1]
        b = image[i,j][0]

        gray = int(0.299*r + 0.587*g + 0.114*b)
        gray2 = str(gray)
        grayfile.write(gray2)
        grayfile.write("\n")

def RGBtoGray(red,green,blue):
    Gray = (0.2989 * red + 0.5870 * green + 0.1140 * blue)/255
    return Gray
cv2.imwrite('Lulu_Back.jpg',image)
cv2.imshow('Lulu_Back',image)
b1,g1,r1=cv2.split(image)
gray=RGBtoGray(r1,g1,b1)
cv2.imshow('Gray_Lulu',gray)
cv2.imwrite('Gray_Lulu.jpg',gray*255)
cv2.waitKey()
cv2.destroyAllWindows()


redfile.close()
greenfile.close()
bluefile.close()
grayfile.close()