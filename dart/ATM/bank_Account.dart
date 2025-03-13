abstract class BankAccount {
  String accountNumber;
  String houlderName;
  double _balance;

  BankAccount(this.accountNumber,this.houlderName, this._balance);


  // Get for balance 
  double get balance => _balance;



  // Bank account money added 
  void deposit(double amount){
      if(amount <= 0){
         throw Exception("Your deposit amount invalid");
      }else{
        _balance += amount;
        print("Mobile sms : your bank account added $amount | Total balance $_balance");
      }
  }


  // Money cashout for atm

  void cashout (double amount){
     if(amount % 500 != 0){
        throw Exception("Please enter valid ammount");
     }else if(_balance < amount){
        throw Exception("Insufficient balance");
     }else{
        _balance -= amount;
        print("Mobile sms : your bank account Cashout $amount | Total balance $_balance");
     }
  }

 // Abstract method for transferring money
  void transfer(BankAccount recipient, double amount);


}