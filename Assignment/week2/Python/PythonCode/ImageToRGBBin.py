import numpy
import cv2

image1=cv2.imread('Lulu_0.jpg')
image=cv2.resize(image1,dsize=(500,500))
width=image.shape[0]
height=image.shape[1]
redfile=open('redbinfile.txt','w')
greenfile=open('greenbinfile.txt','w')
bluefile=open('bluebinfile.txt','w')
for i in range(0,height):
    for j in range(0,width):
        red = image[i,j][2]
        green = image[i,j][1]
        blue = image[i,j][0]

        redfile.write(bin(red)[2:].zfill(8))
        redfile.write("\n")
        greenfile.write(bin(green)[2:].zfill(8))
        greenfile.write("\n")
        bluefile.write(bin(blue)[2:].zfill(8))
        bluefile.write("\n")
cv2.imwrite('Lulu_small.jpg',image)
redfile.close()
greenfile.close()
bluefile.close()

