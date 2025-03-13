/*



Key OOP Concepts Used:
--------------------------------------------------------------------------------
Encapsulation – Use private fields and getters/setters.
Inheritance – Extend from a base BankAccount class.
Polymorphism – Override methods for different types of accounts.
Abstraction – Use abstract classes and methods.


*/


import 'atm.dart';
import 'saving_account.dart';

void main (){
    SavingAccount account = SavingAccount("BNHG14124234", "MD Jamirul islam", 0);
    ATM atm = ATM();
    account.deposit(4001);
    account.cashout(500);
    account.transfer(account, 500);
    atm.checkBalance(account);
}