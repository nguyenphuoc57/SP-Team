import cv2
from PIL import Image
photo = Image.open('Lulu_0.jpg') #your image
photo = photo.convert('RGB')

width = photo.size[0] #define W and H
height = photo.size[1]
f = open("test2.txt", "a")

for y in range(0, height): #each pixel has coordinates
    row = ""
    for x in range(0, width):

        RGB = photo.getpixel((x,y))
        R,G,B = RGB
        print(R, G, B, file=f)
