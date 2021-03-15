import cv2
from PIL import Image
an_image = Image.open("Lulu_0.jpg")
sequence_of_pixels = an_image.getdata()
list_of_pixels = list(sequence_of_pixels)
f = open("test.txt", "a")
print(list_of_pixels,file=f)
f.close()