import struct
import numpy as np
import cv2

def bin_to_float(binary):
    return struct.unpack('!f',struct.pack('!I', int(binary, 2)))[0]

python=np.zeros((500, 500, 3), np.uint8)
verilog=np.zeros((500, 500, 3), np.uint8)

pfile=open('grayPython.txt','r')
vfile=open('outGray.txt','r')

Sosanh=open('Compare.txt','w')

pixelpython=[]
pixelverilog=[]

maxerror=0

for p in pfile:
    pixelpython.append(float(p))
for v in vfile:
    pixelverilog.append(int(bin_to_float(v)*255))
k=0
for i in range(0,500):
    for j in range(0,500):
        temp=abs(pixelpython[k]-pixelverilog[k])
        python[i,j]=(pixelpython[k],pixelpython[k],pixelpython[k])
        verilog[i,j]=(pixelverilog[k],pixelverilog[k],pixelverilog[k])
        Sosanh.write(str(abs(temp)))
        Sosanh.write('\n')
        if(temp>maxerror):
            maxerror=temp
        k=k+1
print('Max Error:',maxerror)
cv2.imwrite('Python_Image.jpg',python)
cv2.imshow('Python_image',python)
cv2.imwrite('Verilog_Image.jpg',verilog)
cv2.imshow('Verilog_Image',verilog)
cv2.waitKey()
cv2.destroyAllWindows()
pfile.close()
vfile.close()
