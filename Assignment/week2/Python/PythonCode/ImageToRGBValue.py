import numpy as np
import cv2
image1=cv2.imread('Lulu_0.jpg')
image=cv2.resize(image1,dsize=(500,500))
cv2.imwrite('Lulu_small.jpg',image)
width=image.shape[0]
height=image.shape[1]
redfile=open('redfile.txt','w')
greenfile=open('greenfile.txt','w')
bluefile=open('bluefile.txt','w')
for i in range(height):
    for j in range(width):
        red=image[i,j][2]
        green=image[i,j][1]
        blue=image[i,j][0]

        redfile.write(str(red))
        redfile.write('\n')
        greenfile.write(str(green))
        greenfile.write('\n')
        bluefile.write(str(blue))
        bluefile.write('\n')

redfile.close()
greenfile.close()
bluefile.close()
