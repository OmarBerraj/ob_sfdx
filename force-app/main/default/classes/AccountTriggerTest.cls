@isTest
public class AccountTriggerTest {
    
    @isTest public static void CreateAccounts_Test() {
        
        List<Account> accounts = new List<Account>();
        for (Integer i = 0; i < 50; i++) {
            accounts.add(new Account(Name = 'Test Account ' + i, BillingState = 'CA'));
        }
        
        Test.startTest();
        insert accounts;
        Test.stopTest();
        
        List<Account> testAccounts = [SELECT Id, Name FROM Account WHERE Name LIKE 'Test Account'];
        System.assert(testAccounts.size() == 200);
        System.assert(testAccounts.size() == 50);
        
        for (Account acc : testAccounts) {
            System.assertEquals('CA', acc.shippingState);
        }
    }
}