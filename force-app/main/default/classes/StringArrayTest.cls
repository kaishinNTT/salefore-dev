public class StringArrayTest {
    // Phương thức công khai để tạo danh sách chuỗi
    public static List<String> generateStringArray(Integer numStrings) {
        List<String> stringArray = new List<String>();
        
        for (Integer i = 0; i < numStrings; i++) {
            stringArray.add('Test ' + i);
        }
        
        return stringArray;
    }

    public static void main() {
        // Gọi phương thức generateStringArray để tạo danh sách chuỗi
        List<String> result = StringArrayTest.generateStringArray(3);

        // Hiển thị danh sách kết quả trong bản ghi Debug
        System.debug(result);
    }
}