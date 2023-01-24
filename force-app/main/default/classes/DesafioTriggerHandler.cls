    public with sharing class DesafioTriggerHandler {

        public static void validar (List <Account> novaConta) {

        //for (Account conta : Trigger.new)
        for (Account conta : novaConta) {

                    if (conta.Type == 'Parceiro') {
    
                        if (UtilsDesafio.validaCPF(conta.AccountNumber) == true) {
    
                            conta.AccountNumber = conta.AccountNumber;   
                            System.debug ('Documento Validado');
                            Opportunity opp = new Opportunity();
                            opp.Name = conta.Name + ' opp Parceiro';
                            opp.CloseDate = Date.today().addDays(30);
                            opp.StageName = 'Qualification';
                            opp.AccountId = conta.Id;
                        
                        } else if (UtilsDesafio.validaCNPJ(conta.AccountNumber) == true){
    
                            conta.AccountNumber = Trigger.new;   
                            System.debug ('Documento Validado');
                            Opportunity opp = new Opportunity();
                            opp.Name = conta.Name + ' opp Parceiro';
                            opp.CloseDate = Date.today().addDays(30);
                            opp.StageName = 'Qualification';
                            opp.AccountId = conta.Id;
    
                        } else if (UtilsDesafio.validaCNPJ(conta.AccountNumber) == false && UtilsDesafio.validaCPF(conta.AccountNumber) == false) {
    
                           System.addError('Número do cliente é inválido');
                        
                        }
                    }
    
                    if (conta.Type == 'Consumidor Final') {    
    
                        if (UtilsDesafio.validaCNPJ(conta.AccountNumber) == true){
    
                            conta.AccountNumber = Trigger.new;   
                            System.debug ('Documento Validado');
                            Task tarefa = new Task();
                            tarefa.WhatId = conta.Name;
                            tarefa.Subject = 'Consumidor Final';
                            tarefa.Status = 'Não Iniciada';
                            tarefa.Priority = 'Normal';
    
                        } else if (UtilsDesafio.validaCPF(conta.AccountNumber) == true) {
    
                            conta.AccountNumber = Trigger.new;   
                            System.debug ('Documento Validado');
                            Task tarefa = new Task();
                            tarefa.WhatId = conta.Name;
                            tarefa.Subject = 'Consumidor Final';
                            tarefa.Status = 'Não Iniciada';
                            tarefa.Priority = 'Normal';
                        
                        } else if (UtilsDesafio.validaCNPJ(conta.AccountNumber) == false && UtilsDesafio.validaCPF(conta.AccountNumber) == false) {
    
                            System.addError ('Número do cliente é inválido');
                        }
                    }
            
        
                          
                
            
            }
        }
    }