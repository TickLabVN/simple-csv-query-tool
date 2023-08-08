# Truy vấn dữ liệu từ file CSV bằng SQL

## Giới thiệu
Khi sử dụng một hệ quản trị cơ sở dữ liệu (DBMS) nào đó, bạn có từng thắc mắc tại sao các DBMS lại có thể hiểu được các câu truy vấn như SELECT, INSERT,… để trả về kết quả đúng với ý muốn của người dùng, loại cấu trúc dữ liệu nào được các DBMS sử dụng để lưu trên bộ nhớ hay tại sao mỗi bảng chỉ có thể có một primary-key. Thử thách này sẽ giúp bạn nắm được các nguyên tắc cơ bản của ngôn ngữ truy vấn SQL và cách ngôn ngữ này được sử dụng trong các DBMS.

## Mô tả yêu cầu
1. **Mô tả**:  
Bạn được yêu cầu hiện thực một hệ quản trị cơ sở dữ liệu đơn giản chỉ với 2 câu truy vấn INSERT và SELECT.
- Input là một file CSV gồm từ 10 - 15 cột. 
- Output là thông tin từ các cột trong bảng đối với câu lệnh SELECT và thông báo thực thi thành công hay thất bại đối với câu lệnh INSERT. 
2. **Yêu cầu**:
- Thực thi chương trình trên hệ điều hành Linux.
- Sử dụng C++ 17, compile bằng g++ theo standard cpp17.
- Chương trình luôn trong trạng thái sẵn sàng thực thi câu lệnh và chỉ kết thúc khi gặp lệnh `.exit`.  
- Dữ liệu sau khi INSERT không bị mất đi khi kết thúc chương trình.  
- Chương trình chạy không xảy ra memory leak.

Có tất cả 100 testcase được dùng để kiểm tra tính đúng đắn của sản phẩm. 

## Kiến thức đạt được sau khi hoàn thành thử thách

- Thành thạo xử lý chuỗi
- Hiểu và vận dụng tốt con trỏ
- Nắm được sơ lược sự khác nhau giữa các ngôn ngữ lập trình bậc cao (C#, Java, Javascript, Python ...) và ngôn ngữ lập trình bậc thấp (C, C++, ...)
- Hiểu các một chương trình hoạt động và chi tiết cách bộ nhớ được sử dụng
- Nắm được ý tưởng về sự ra đời của các ngôn ngữ lập trình và cách ngôn ngữ lập trình hoạt động
- Các principle trong lập trình C++ 

## Timelines

|Tuần|Mục tiêu|Yêu cầu|
|--|:--|--|
|1|- Cài đặt hệ điều hành Linux và môi trường làm việc <br> - Tìm hiểu sơ lược về ngôn ngữ SQL<br> - Cài SQLite và chạy thử một vài chức năng | |
|2|... | |

## Tài liệu tham khảo (recommend)

- Learn CPP: <https://www.learncpp.com/>
- Roadmap.sh (advanced): <https://roadmap.sh/cpp>
- RAII
- Rule of zero, rules of three, rules of five
- Cpp Core Guidelines: <https://isocpp.github.io/CppCoreGuidelines/CppCoreGuidelines#main>
