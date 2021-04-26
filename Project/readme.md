# *Report of Group - Update weekly

# THIẾT KẾ VÀ THỰC HIỆN MẠNG VGG19 LÊN FPGB

## 1. Giới thiệu về CNN
**Tổng quan**: 
- Trong mạng neural, mô hình mạng neural tích chập (CNN) là 1 trong những mô hình để nhận dạng và phân loại hình ảnh. Trong đó, xác định đối tượng và nhận dạng khuôn mặt là 1 trong số những lĩnh vực mà CNN được sử dụng rộng rãi.
- CNN phân loại hình ảnh bằng cách lấy 1 hình ảnh đầu vào, xử lý và phân loại nó theo các hạng mục nhất định (Ví dụ: Chó, Mèo, Hổ, ...). Máy tính coi hình ảnh đầu vào là 1 mảng pixel và nó phụ thuộc vào độ phân giải của hình ảnh. Dựa trên độ phân giải hình ảnh, máy tính sẽ thấy H x W x D (H: Chiều cao, W: Chiều rộng, D: Độ dày). 

**Convolution layer**: Tích chập là lớp đầu tiên để trích xuất các tính năng từ hình ảnh đầu vào. Tích chập duy trì mối quan hệ giữa các pixel bằng cách tìm hiểu các tính năng hình ảnh bằng cách sử dụng các ô vương nhỏ của dữ liệu đầu vào. Nó là 1 phép toán có 2 đầu vào như ma trận hình ảnh và 1 filter.

![image](https://user-images.githubusercontent.com/75322678/116119750-f5b78280-a6e8-11eb-8964-fedcebb447d0.png)

![Alt Text](https://user-images.githubusercontent.com/75322678/116120199-7eceb980-a6e9-11eb-8ac2-30bf899482cd.gif)

**Pooling


## 2. Cấu trúc của VGG19 model


## 3. Thực hiện mạng với Python

## 4. Thực hiện mạng với Verilog lên FPGB

## 5. Đánh giá 
