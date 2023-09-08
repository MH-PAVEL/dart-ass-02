// Define an abstract class Account with the following properties:
// ●       accountNumber (integer)
// ●       balance (double)
// It should also have the following methods:
// ●       deposit(double amount): Adds the specified amount to the account balance.
// ●       withdraw(double amount): Abstract method that deducts the specified amount from the account balance.
// Define a class SavingsAccount that extends the Account class. It should have an additional property called interestRate (double).
// Implement the withdraw() method in the SavingsAccount class as follows:
// ●       Subtract the specified amount from the account balance.
// ●       Apply the interest rate to the remaining balance.
// Define a class CurrentAccount that extends the Account class. It should have an additional property called overdraftLimit (double).
// Implement the withdraw() method in the CurrentAccount class as follows:
// ●       Allow withdrawals up to the overdraft limit.
// ●       If the withdrawal amount exceeds the overdraft limit, print a message indicating insufficient funds.
// In main()
// ●       Create an instance of the SavingsAccount class by providing values for the account number, initial balance, and interest rate.
// ●       Use the instance to perform operations like depositing and withdrawing money.
// ●       Create an instance of the CurrentAccount class by providing values for the account number, initial balance, and overdraft limit.
// ●       Use the instance to perform operations like depositing and withdrawing.

abstract class Account{
  int accountNumber;
  double balance;
  Account(this.accountNumber, this.balance);
  void deposit(double amount){
    balance += amount;
  }
  void withdraw(double amount); // abstract method
}
class SavingsAccount extends Account{
  double interestRate;
  SavingsAccount( int accountNumber, double balance, this.interestRate) : super(accountNumber, balance);
 @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * (interestRate/100);
  }
}
class CurrentAccount extends Account{
  double overDraftLimit;
  CurrentAccount(int accountNumber, double balance, this.overDraftLimit) : super(accountNumber, balance);
  @override
  void withdraw(double amount) {
    if(balance >= amount && overDraftLimit >= amount){
      balance -= amount;
    } else{
      print("Insufficient Funds");
    }
  }
}

void main(){
  SavingsAccount pavel = SavingsAccount(000, 500.00, 30);
  pavel.deposit(500.00);
  pavel.withdraw(500.00);
  // print(pavel.balance);
  CurrentAccount pav = CurrentAccount(003, 3000.00, 9500);
  pav.deposit(500.00);
  pav.withdraw(3600.00);
  print(pav.balance);
}