class BankAcc{
  String bankAccNo;
  String accHolderName;
  double _currentBalance = 0.0;

  BankAcc(this.bankAccNo,this.accHolderName);
  // getter fnc
  // double get getCurrentBalance{
  //   return _currentBalance;
  // }
  double get getCurrentBalance => _currentBalance;

  // setter fnc
  set setCurrentBalance(double amount){
    _currentBalance += amount;
  }
// private method
  double _calculateTax(){
   return (_currentBalance /10);
  }

  double get getTax => _calculateTax();


}

