
# *Report of Group - Update weekly

# THIẾT KẾ VÀ THỰC HIỆN MẠNG VGG19 LÊN FPGB

## 1. Giới thiệu về CNN
**Tổng quan**: 
- Trong mạng neural, mô hình mạng neural tích chập (CNN) là 1 trong những mô hình để nhận dạng và phân loại hình ảnh. Trong đó, xác định đối tượng và nhận dạng khuôn mặt là 1 trong số những lĩnh vực mà CNN được sử dụng rộng rãi.
- CNN phân loại hình ảnh bằng cách lấy 1 hình ảnh đầu vào, xử lý và phân loại nó theo các hạng mục nhất định (Ví dụ: Chó, Mèo, Hổ, ...). Máy tính coi hình ảnh đầu vào là 1 mảng pixel và nó phụ thuộc vào độ phân giải của hình ảnh. Dựa trên độ phân giải hình ảnh, máy tính sẽ thấy H x W x D (H: Chiều cao, W: Chiều rộng, D: Độ dày). 

**Convolution layer**: Tích chập là lớp đầu tiên để trích xuất các tính năng từ hình ảnh đầu vào. Tích chập duy trì mối quan hệ giữa các pixel bằng cách tìm hiểu các tính năng hình ảnh bằng cách sử dụng các ô vương nhỏ của dữ liệu đầu vào. Nó là 1 phép toán có 2 đầu vào như ma trận hình ảnh và 1 filter.

![image](https://user-images.githubusercontent.com/75322678/116119750-f5b78280-a6e8-11eb-8964-fedcebb447d0.png)

**Pooling**: Lớp pooling sẽ giảm bớt số lượng tham số khi hình ảnh quá lớn. Không gian pooling còn được gọi là lấy mẫu con hoặc lấy mẫu xuống làm giảm kích thước của mỗi map nhưng vẫn giữ lại thông tin quan trọng. Các pooling có thể có nhiều loại khác nhau:
- Max Pooling
- Average Pooling
- Sum Pooling
Max pooling lấy phần tử lớn nhất từ ma trận đối tượng, hoặc lấy tổng trung bình. Tổng tất cả các phần tử trong map gọi là sum pooling

![image](https://user-images.githubusercontent.com/75322678/116120555-da00ac00-a6e9-11eb-8a5c-4b9f2f5bccea.png)
**Đường viền - Padding:**
Đôi khi kernel không phù hợp với hình ảnh đầu vào. Ta có 2 lựa chọn:
Chèn thêm các số 0 vào 4 đường biên của hình ảnh (padding).
Cắt bớt hình ảnh tại những điểm không phù hợp với kernel.
**Bước nhảy - Stride:**
Stride là số pixel thay đổi trên ma trận đầu vào. Khi stride là 1 thì ta di chuyển các kernel 1 pixel. Khi stride là 2 thì ta di chuyển các kernel đi 2 pixel và tiếp tục như vậy. Hình dưới là lớp tích chập hoạt động với stride là 2.
![image](https://user-images.githubusercontent.com/75322678/116121084-74f98600-a6ea-11eb-82a4-b18e06e6dd9c.png)


**Hàm phi tuyến - ReLU:**
ReLU viết tắt của Rectified Linear Unit, là 1 hàm phi tuyến. Với đầu ra là: ƒ (x) = max (0, x).
Tại sao ReLU lại quan trọng: ReLU giới thiệu tính phi tuyến trong ConvNet. Vì dữ liệu trong thế giới mà chúng ta tìm hiểu là các giá trị tuyến tính không âm.
*Có 1 số hà phi tuyến khác như tanh, sigmoid cũng có thể được sử dụng thay cho ReLU. Hầu hết người ta thường dùng ReLU vì nó có hiệu suất tốt.*
![image](https://user-images.githubusercontent.com/75322678/116121028-63b07980-a6ea-11eb-8447-efba54010a3f.png)


## 2. Cấu trúc của VGG19 model


## 3. Thực hiện mạng với Python

## 4. Thực hiện mạng với Verilog lên FPGB

## 5. Đánh giá 
