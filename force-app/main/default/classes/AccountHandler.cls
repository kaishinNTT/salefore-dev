public class AccountHandler {
    public static Account insertNewAccount(String chenten) {
        Account newAccount = new Account(Name = chenten);
        try {
            insert newAccount;
            return newAccount; // Trả về đối tượng Account nếu thành công
        } catch (DmlException e) {
            return null; // Trả về null nếu xảy ra lỗi DML
        }
    }
}