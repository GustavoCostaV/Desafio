public with sharing class UtilsDesafio {

        public static Boolean validate(String doc){
                Boolean isValid;
            if(doc.length() == 11){
                return true;
                 
            } else if(doc.length() == 14){
                return true;
                
            } else  {
                return false;
                System.debug ('Número do cliente é inválido');
               
            }
        }
    
       
    
    
}