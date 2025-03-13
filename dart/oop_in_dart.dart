

/// Encapsulation ---------------- in dart 
/// 
/// 

class BankAccountsss {
  
  double _balance = 0.0; // Private property 

  void deposit (double amount){
     _balance += amount;
  }



  dynamic checkValidAmount (int amount){
    if(amount % 500 == 0){
      return amount;
    }else {
      return "Amount invalid. Valid ";
    }
  }


  void withdraw(double amount){
    if(_balance >= amount){
       _balance -= amount;
    }else {
       print("Insufficient funds");
    }
  }


  double getBalance (){
    return _balance;
  }

  
}


void main(){
   var amount = BankAccountsss();
   print("Current balance : ${amount.checkValidAmount(5000)}");
}