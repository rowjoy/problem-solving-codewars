
import 'bank_Account.dart';

class SavingAccount extends BankAccount {
  SavingAccount(String accountNumber, String holderName, double balance) :super(accountNumber,holderName,balance);
  @override
  void transfer(BankAccount recipient, double amount) {
     if(amount > balance){
        throw Exception('Insufficient balance for transfer');
     }else {
        cashout(amount);
        recipient.deposit(amount);
        print('Transfer Successful: \$${amount.toStringAsFixed(2)} to ${recipient.houlderName}');
     }
  }
  
}