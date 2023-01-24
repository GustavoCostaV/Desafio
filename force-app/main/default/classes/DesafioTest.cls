@isTest
public class DesafioTest {
    static testMethod void testValidacao() {
        List <Opportunity> oppInsert = new List <Opportunity> ();

        Account conta = new Account();
        conta.Name = 'Conta Teste';
        conta.AccountNumber = '12345678910';
        conta.developerName = 'Parceiro';
        
        Account conta2 = new Account();
        conta2.Name = 'Conta Teste';
        conta2.AccountNumber = '12345678901234';
        conta2.developerName = 'Consumidor Final';
        
        Account conta3 = new Account();
        conta3.Name = 'Conta Teste';
        conta3.AccountNumber = '12345';
        conta3.developerName = 'Parceiro';
        
        insert conta;
        insert conta2;
        insert conta3;
    
    
    
    }
}