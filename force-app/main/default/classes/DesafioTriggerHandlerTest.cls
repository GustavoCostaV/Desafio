@isTest
private class DesafioTriggerHandlerTest {

    @isTest
    static void testValidarValidCNPJ() {
        // Testa quando a conta é do tipo Parceiro e o CNPJ é válido
        Account conta = new Account(Type = 'Parceiro', AccountNumber = '12345678000100');
        List<Account> contas = new List<Account>{conta};
        DesafioTriggerHandler.validar(contas);
        System.assert(System.isEmpty(System.getErrors()));
    }
    
    @isTest
    static void testValidarInvalidCNPJ() {
        // Testa quando a conta é do tipo Parceiro e o CNPJ é inválido
        Account conta = new Account(Type = 'Parceiro', AccountNumber = '12345678901234');
        List<Account> contas = new List<Account>{conta};
        DesafioTriggerHandler.validar(contas);
        System.assert(!System.isEmpty(System.getErrors()));
    }
    
    @isTest
    static void testValidarValidCPF() {
        // Testa quando a conta é do tipo Consumidor Final e o CPF é válido
        Account conta = new Account(Type = 'Consumidor Final', AccountNumber = '12345678900');
        List<Account> contas = new List<Account>{conta};
        DesafioTriggerHandler.validar(contas);
        System.assert(System.isEmpty(System.getErrors()));
    }
    
    @isTest
    static void testValidarInvalidCPF() {
        // Testa quando a conta é do tipo Consumidor Final e o CPF é inválido
        Account conta = new Account(Type = 'Consumidor Final', AccountNumber = '12345678901');
        List<Account> contas = new List<Account>{conta};
        DesafioTriggerHandler.validar(contas);
        System.assert(!System.isEmpty(System.getErrors()));
    }
    
    @isTest
    static void testBuilderOpp() {
        // Testa quando a conta é do tipo com RecordTypeId = '0128c000002CaCiAAK'
        Account conta = new Account(Type = 'Parceiro', RecordTypeId = '0128c000002CaCiAAK');
        List<Account> contas = new List<Account>{conta};
        Test.startTest();
        DesafioTriggerHandler.builder(contas);
        Test.stopTest();
        System.assertEquals(1, [SELECT COUNT() FROM Opportunity]);
    }
    
    @isTest
    static void testBuilderTask() {
        // Testa quando a conta é do tipo com RecordTypeId = '0128c000002CaCnAAK'
        Account conta = new Account(Type = 'Parceiro', RecordTypeId = '0128c000002CaCnAAK');
        List<Account> contas = new List<Account>{conta};
        Test.startTest();
        DesafioTriggerHandler.builder(contas);
        Test.stopTest();
        System.assertEquals(1, [SELECT COUNT() FROM Task]);
    }

}