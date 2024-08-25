class BankAccount {
  String accountNumber = '';
  String accountHolderName = '';
  double balance = 0.0;

  void setAccountDetails(
      String accNum, String holderName, double initialBalance) {
    accountNumber = accNum;
    accountHolderName = holderName;
    balance = initialBalance;
  }

  void deposit(double amount) {
    balance += amount;
    print('Deposit of \$${amount.toStringAsFixed(2)} successful.');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawal of \$${amount.toStringAsFixed(2)} successful.');
    } else {
      print('Insufficient balance.');
    }
  }

  void displayBalance() {
    print('Account Number: $accountNumber');
    print('Account Holder: $accountHolderName');
    print('Current Balance: \$${balance.toStringAsFixed(2)}');
  }
}

void main() {
  BankAccount account1 = BankAccount();
  account1.setAccountDetails('1234567890', 'Alice Smith', 1000.0);
  account1.deposit(200.0);
  account1.withdraw(150.0);
  account1.displayBalance();
}