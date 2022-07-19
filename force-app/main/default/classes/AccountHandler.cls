public class AccountHandler {
	
    public static Account insertNewAccount(String accountName) {
        
        Account acc = new Account(Name = accountName);
        
        try {
        	insert acc;    
        } catch (DmlException e) {
            return null;
        }
        
        return acc;
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

    public static Boolean deleteAccount(Id accountId) {
        return false;
    }
}