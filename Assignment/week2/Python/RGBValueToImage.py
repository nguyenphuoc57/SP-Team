import numpy as np
import cv2
redfile=open('redbinfile.txt','r')
greenfile=open('greenbinfile.txt','r')
bluefile=open('bluebinfile.txt','r')

image=np.zeros((500,500,3),np.uint8)
redpixel=[]
greenpixel=[]
bluepixel=[]


x=0
i=0
j=0
for r in redfile:
    #redpixel.append(r)
    redpixel.append(int(r,2))
for g in greenfile:
   # greenpixel.append(g)
    greenpixel.append(int(g,2))
for b in bluefile:
   # bluepixel.append(b)
     bluepixel.append(int(b,2))
for i in range (500):
    for j in range(500):
        image[i,j] = (bluepixel[x], greenpixel[x], redpixel[x])
        x =x+1

def RGBtoGray(red,green,blue):
    Gray = (0.2989 * red + 0.5870 * green + 0.1140 * blue) / 255
    return Gray

cv2.imwrite('Lulu_reborn.jpg',image)
cv2.imshow('Lulu_reborn',image)
temp=cv2.imread('Lulu_small.jpg')

cv2.imshow('LuLu_small',temp)
b1,g1,r1=cv2.split(image)
gray=RGBtoGray(r1,g1,b1)
cv2.imshow('Gray_Lulu',gray)
cv2.imwrite('Gray_Lulu.jpg',gray)
cv2.waitKey()
cv2.destroyAllWindows()


redfile.close()
greenfile.close()
bluefile.close()
