# importing the module
import cv2
import numpy as np

# reading the vedio
source = cv2.VideoCapture('countdown.mp4')
sourcetemp=cv2.VideoWriter_fourcc(*'XVID')
out = cv2.VideoWriter('output.avi',sourcetemp,5,(500,500))
while (True):
    ret1 ,frame =source.read()
    if ret1 ==True:
        b=cv2.resize(frame,(500,500),fx=0,fy=0,interpolation=cv2.INTER_CUBIC)
        out.write(b)
    else :
        break

def Video2Gray (b,g,r):
    Gra=(0.2989*r+0.5870*g+0.1140*b)/255
    return Gra
source3 = cv2.VideoCapture('output.avi')
# running the loop

while (source3.isOpened()):

    # extracting the frames
    ret, img = source3.read()

    if (ret == True):
        blue, green, red = cv2.split(img)
        GrayVideo = Video2Gray(blue, green, red)
        # converting to gray-scale

        # displaying the video
        temp1 =  cv2.imshow("Gray Video", GrayVideo)
        out = cv2.VideoWriter('GrayVideo.avi', cv2.VideoWriter_fourcc('M', 'J', 'P', 'G'), 10, (500, 500))
        cv2.imshow("Color Video", img)
        # exiting the loop
        key = cv2.waitKey(24)
        if key == 24 or key == ord('q'):
            break
    else:
        break
# closing the window
cv2.destroyAllWindows()
source.release()
out.release()