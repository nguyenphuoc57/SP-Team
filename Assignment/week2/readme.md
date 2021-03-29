
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
  
  - [x] Convert image to file bin
  - [x] Convert text file bin to image

 *DONE*
## 4. Verilog 
- [x] Addition 2 floating point number
- [x] Multiplication 2 floating point number
- [x] RGB to Gray (on one frame)
- [x] Testbench
  - input: text file (RGB)
  - output:  text file (Gray)
 ![image](https://user-images.githubusercontent.com/75322678/112105795-68f84100-8bdf-11eb-83f9-599ae22e09ed.png)
![image](https://user-images.githubusercontent.com/75322678/112105850-79102080-8bdf-11eb-91aa-1d572012731d.png)

  
   *DONE*
## 5. Result 
    ## Python Image
   ![Python_Image](https://user-images.githubusercontent.com/79899558/112815907-00133c00-90ab-11eb-9582-b9a86c4da60c.jpg)
    
    ## Verilog Image
   ![Verilog_Image](https://user-images.githubusercontent.com/79899558/112815991-1a4d1a00-90ab-11eb-9f49-896742bfaff0.jpg)


