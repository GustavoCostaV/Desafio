public with sharing class UtilsDesafio {

        public static void validate(String doc){
            Boolean isValid;
            if(doc.length() == 11){
                isValid = ValidaCPF(doc); 
            } else if(doc.length() == 14){
                isValid = validaCNPJ(doc);
            }
        }
    
        public static Boolean validaCNPJ(String documento) {
           
            if (documento.length() == 14) {
                // a.AccountNumber = documento;
                // a.RecordTypeId = '0128c000002CaCiAAK';
                return true;    
            } else {
                return false;
            } 
        }
    
        public static Boolean validaCPF(String documento2) {
            if (documento2.length() == 11){
                // a.AccountNumber = documento;
                // a.RecordTypeId = '0128c000002CaCnAAK';
                return true;    
            } else {
                return false;
            }
            
        }      
        
        @AuraEnabled(cacheable=true)
        public static List<Account> helperDesafio () {

        return [SELECT Id, Name, AccountNumber, Type
                FROM Account
                ];
    }

    
    
}