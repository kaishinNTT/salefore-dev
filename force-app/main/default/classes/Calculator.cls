public class Calculator {

    // Phương thức tính cộng
    public static Integer add(Integer num1, Integer num2) {
        return num1 + num2;
    }

    // Phương thức tính trừ
    public static Integer subtract(Integer num1, Integer num2) {
        return num1 - num2;
    }

    // Phương thức tính nhân
    public static Integer multiply(Integer num1, Integer num2) {
        return num1 * num2;
    }

    // Phương thức tính chia
    public static Decimal divide(Integer num1, Integer num2) {
        // Kiểm tra trường hợp chia cho 0
        if (num2 == 0) {
            return null; // Trả về null để biểu thị lỗi
        }
        return Decimal.valueOf(num1) / Decimal.valueOf(num2);
    }
}