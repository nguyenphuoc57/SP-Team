
# Assignment 2: Compare RGB to Gray convertor using Python with Verilog
## 1. Taks: 
 Compare RGB to Gray convertor using Python with Verilog
 
 Input: image
 
 Output:
- An image by python
- An image by Verilog
- Compare image from two source
      
## 2. Algorithm:
[Algorithm](https://docs.opencv.org/3.4/de/d25/imgproc_color_conversions.html)   


**RGB[A] to Gray:Y←0.299⋅R+0.587⋅G+0.114⋅B**   
                  and     
**Gray to RGB[A]:R←Y,G←Y,B←Y,A←max(ChannelRange)**
## 3. Python
  We have a command code available in Opencv's source:
  
  `cvtColor(src, bwsrc, cv::COLOR_RGB2GRAY);`
  
  - Convert image to text file
  - Convert text file to image
## 4. Verilog 
- Addition 2 floating point number
- Multiplication 2 floating point number
- RGB to Gray (on one frame)
- Testbench
  - input: text file (RGB)
  - output:  text file (Gray)
## 5. Result 
