public with sharing class ContactAndLeadSearch {
    public static List<List<SObject>> searchContactsAndLeads(String searchTerm) {
        //danh sách để chứa kết quả
        List<List<SObject>> results = new List<List<SObject>>();
        
        // tìm kiếm các liên hệ (contacts) phù hợp
        List<Contact> matchingContacts = [SELECT Id, FirstName, LastName FROM Contact WHERE FirstName LIKE :searchTerm OR LastName LIKE :searchTerm];
        results.add(matchingContacts);
        
        // tìm kiếm các khách hàng tiềm năng (leads) phù hợp
        List<Lead> matchingLeads = [SELECT Id, FirstName, LastName FROM Lead WHERE FirstName LIKE :searchTerm OR LastName LIKE :searchTerm];
        results.add(matchingLeads);
        
        // trả về danh sách kết quả chứa danh sách danh bạ và danh sách khách hàng tiềm năng
        return results;
    }
}