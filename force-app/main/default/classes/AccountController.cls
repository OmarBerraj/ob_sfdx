public with sharing class AccountController {
    public static List<Account> getAllActiveAccounts() {
        return [SELECT Id, Name, Active__c FROM Account WHERE Active__c = 'Yes'];
    }

    public static Boolean deleteAccount(Id accountId) {
        return true;
    }

    public static Boolean updateAccountName(Id accountId, String name) {
        Account acc = new Account(Id = accountId, Name = name);

        try {
            update acc;
        } catch (Exception e) {
            return false;
        }

        return true;
    }
}