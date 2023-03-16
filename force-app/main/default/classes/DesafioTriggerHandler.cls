    public with sharing class DesafioTriggerHandler {

        public static void validar (List <Account> novaConta) {

        for (Account conta : novaConta) {

                    if (conta.Type == 'Parceiro') {
                        if (!UtilsDesafio.validaCNPJ(String.valueOf(conta.AccountNumber))) {
                            System.addError('Número do cliente é inválido');

                                                 
                        }

                        if (conta.Type == 'Consumidor Final') {
                         if (!UtilsDesafio.validaCPF(String.valueOf(conta.AccountNumber))){
                            System.addError('Número do cliente é inválido');
                            
              
        
                          
                
            
            }}}
        }}


        public static void builder (List <Account> novaConta) {

           for(Account conta : novaConta){
          
            if(acc.RecordTypeId == '0128c000002CaCiAAK'){
                try{
                    Opportunity opp = Repositorio.accountWithOpp(acc);
                    insert opp;
                }catch(Exception ex){
                    System.debug('ERROR CREATE OPP THE ACCOUNT:' + acc.Id);
                    System.debug('Message: ' +  ex.getMessage());
                }
            }

            if(acc.RecordTypeId == '0128c000002CaCnAAK'){
                try{
                    Task newTask = Repositorio.accountWithTask(acc);
                    insert newTask;
                }catch(Exception ex){
                    System.debug('ERROR CREATE CASE THE ACCOUNT:' + acc.Id);
                    System.debug('Message: ' +  ex.getMessage());
                }
            }
        
        }
    }
    }