public with sharing class Repositorio {
    public static Opportunity accountWithOpp(Account acc){
        return  new Opportunity(Name = acc.Name + ' – Opp Parceiro',
                                AccountId = acc.Id,
                                CloseDate = Date.today().addDays(30),
                                StageName = 'Qualification'
                                );
    }

    public static Task accountWithTask (Account acc){
        return new Task(WhatId = acc.Id,
                        Subject = 'Consumidor Final',
                        Status = 'Não Iniciada',
                        Priority = 'Normal'              
                        );
    }
}