#Kernel Print
from keras.models import Model, load_model
import ctypes
import struct
#Save the final weights after training
model_final.save_weights("vgg19_1.h5")
def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')
#drive.mount('/content/drive')
model = model_temp
weight_kernel = model.layers[1].weights[0].numpy()
matrix=[]
#for x in weight_kernel:
 #for i in x:
  # a=[]
   #a.append(x)
   #for i in a:
     #matrix.append(i)
#print(matrix)
for layers in model.layers :
  a=str(layers.name)
  if 'conv' in a:
    w= layers.weights[0].numpy()
    with open(layers.name + ".txt".format(layers),"w") as temp:
     for x in w:
      for y in x:
        for a in y:
          for b in a:
           temp.write(float_to_bin(b))
           temp.write("\n")
#Bias Print
import ctypes
import struct
def float_to_bin(num):
    return format(struct.unpack('!I', struct.pack('!f', num))[0], '032b')

for layers in model_final.layers:
  a=str(layers.name)
  if 'conv' in a:
    w= layers.weights[1].numpy()
    with open(layers.name + ".txt".format(layers),"w") as temp:
      for x in w:
        temp.write(float_to_bin(x))
        temp.write("\n")