import cv2
img = cv2.imread('Lulu_0.jpg')
cv2.imshow('image',img)
#cv2.waitKey(0)
#cv2.destroyAllWindows()
img_Gray = cv2.cvtColor(img, cv2.COLOR_BGR2GRAY)
cv2.imshow('Gray Image',img)

cv2.waitKey(0)
cv2.destroyAllWindows()