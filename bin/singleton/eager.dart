class Singleton {
  // eager instantiation
  static final Singleton _instance = Singleton._internal();

  Singleton._internal() {
    print('Creating an instance of Singleton');
  }

  // factory constructor, should return same instance
  factory Singleton() {
    return _instance;
  }

/*
  Khi gặp một trong hai trường hợp triển khai hàm tạo sau đây, hãy sử dụng từ khóa factory:

  - Hàm tạo không phải lúc nào cũng tạo một phiên bản mới của lớp của nó. Mặc dù
  một nhà xây dựng nhà máy không thể trả về nullnhưng nó có thể trả về: một phiên bản
  hiện có từ bộ đệm thay vì tạo một phiên bản mới một thể hiện mới của một kiểu con

  - Bạn cần thực hiện công việc không hề đơn giản trước khi xây dựng một thể hiện.
  Điều này có thể bao gồm việc kiểm tra các đối số hoặc thực hiện bất kỳ
  quá trình xử lý nào khác không thể xử lý được trong danh sách khởi tạo.
   */
}

void main() {
  var s = Singleton();
  print(s);
}
