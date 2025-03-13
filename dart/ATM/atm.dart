// ATM Class for handling transactions
import 'bank_Account.dart';

class ATM {
  void checkBalance(BankAccount account) {
    print('Current balance: \$${account.balance.toStringAsFixed(2)}');
  }
  

  void deposit(BankAccount account, double amount) {
    try {
      account.deposit(amount);
      print('Deposit successful. New balance: \$${account.balance.toStringAsFixed(2)}');
    } catch (e) {
      print('Deposit Error: $e');
    }
  }

  void withdraw(BankAccount account, double amount) {
    try {
      account.cashout(amount);
      print('Withdrawal successful. New balance: \$${account.balance.toStringAsFixed(2)}');
    } catch (e) {
      print('Withdrawal Error: $e');
    }
  }



  void transfer(BankAccount fromAccount, BankAccount toAccount, double amount) {
    try {
      fromAccount.transfer(toAccount, amount);
      print('Transfer successful. New balance: \$${fromAccount.balance.toStringAsFixed(2)}');
    } catch (e) {
      print('Transfer Error: $e');
    }
  }




}