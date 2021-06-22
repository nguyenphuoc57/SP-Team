from codecs import decode
#import h5py
import sys
import numpy as np
import struct
def gen_block (module_name,device_name,layer_num,width_data_in,width_kernel,width_data_out,data_in_bit,data_out_bit):
    file_name = str(module_name) + str(layer_num) + ".v"
    fout =open(file_name,'w')
    fout.write("module " + str(module_name) + str(layer_num))
    fout.write(" (" + "clk,"+ "reset," + 'enable_conv,'+ 'enable_max,')
    for i in range (1,width_data_in+1):
        fout.write('data_in_'+str(i)+ ", "+ "\n")
    for j in range (1,width_kernel+1):
        fout.write('\tkernel_in_' +str(j)+ ',' + "\n")
    for z in range (1,width_data_out+1):
        fout.write('\tdata_out_' +str(z) + ',' + "\n")
    fout.write('valid_in, ' + 'valid_out'+"\n")
    fout.write(');' + "\n")
    #############################################################################
    fout.write('input ' + 'clk,' + 'reset,' + 'enable_conv, ' + 'enable_max;')
    fout.write('\n')
    fout.write('input '+'['+str(data_in_bit-1)+':'+str(data_out_bit-data_in_bit)+'] ')
    for i in range(1, width_data_in + 1):
        fout.write('\t\tdata_in_' + str(i) + ", " + "\n")
    for j in range(1, width_kernel + 1):
        if (j != width_kernel+1):
         fout.write('\t\tkernel_in_' + str(j) + ',' + "\n")
        else:
            fout.write('\t\tkernel_in_' + str(j)  + "\n")
    fout.write(';' + '\n')
    #################################################################
    fout.write('output valid_in, valid_out; ' + '\n')
    fout.write('output ' + '[' + str(data_out_bit - 1) + ':' + str(data_out_bit - data_out_bit) + '] ')
    for z in range (1,width_data_out+1):
        if (j != width_data_out + 1):
            fout.write('\tdata_out_' + str(z) + ',' + "\n")
        else:
            fout.write('\tdata_out_' + str(z) + "\n")
    ##############################################################
    for i in range (1,width_data_in+1):
        fout.write(str(device_name)+str(layer_num) + ' ' +str(i) +'( .clk(clk),'+ '\n')
        fout.write('\t\t' + '   .reset(reset),'+'\n')
        fout.write('\t\t' + '   .enable_conv(enable_conv),' + '\n')
        fout.write('\t\t' + '   .enable_max(enable_max),' + '\n')
        fout.write('\t\t' + '   .data_in(data_in_'+str(i)+'),' + '\n')
        fout.write('\t\t' + '   .kernel_in(kernel_in_' + str(i) + '),' + '\n')
        fout.write('\t\t' + '   .data_out(data_out_' + str(i) + '),' + '\n')
        fout.write('\t\t' + '   .valid_in(valid_in),' + '\n')
        fout.write('\t\t' + '   .valid_out(valid_out)' + '\n')
        fout.write('\t' + ');' + '\n')

    fout.write('endmodule' + '\n')
    fout.close()




gen_block("layer","block",1,64,64,64,32,32)

