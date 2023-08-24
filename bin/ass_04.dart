abstract class Account {
  int accountNumber;
  double balance;

  Account(this.accountNumber, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("$amount deposited successfully in account no ($accountNumber), new balance is: $balance");
  }

  void withdraw(double amount); // Abstract method
}

class SavingsAccount extends Account {
  double interestRate;

  SavingsAccount(int accountNumber, double balance, this.interestRate)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    balance -= amount;
    balance += balance * interestRate;
    print("Savings account ($accountNumber) remaining balance after withdrawing $amount with interest of ${interestRate * 100}%: $balance");
  }
}

class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (balance - amount >= -overdraftLimit) {
      balance -= amount;
      print("Current Account ($accountNumber) Balance: $balance");
    } else {
      print("This account ($accountNumber) has insufficient funds.");
    }
  }
}

void main() {
  // Creating a SavingsAccount instance
  SavingsAccount savings = SavingsAccount(12345, 1000.0, 0.05);

  // Depositing and withdrawing from SavingsAccount
  savings.deposit(500.0);
  savings.withdraw(200.0);

  // Creating a CurrentAccount instance
  CurrentAccount current = CurrentAccount(17890, 2000.0, 1000.0);
  CurrentAccount current2 = CurrentAccount(67880, 2000.0, 1000.0);

  // Depositing and withdrawing from CurrentAccount
  current.deposit(500.0);
  current.withdraw(4000.0);
  current2.withdraw(100.0);


}
