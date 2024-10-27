import 'dart:io';

void main() {
  // inetiall balance from the BankAccount class
  var account = BankAccount();

  while (true) {
    print('\nChoose an option:');
    print('1. Deposit');
    print('2. Withdraw');
    print('3. Balance');
    print('4. Exit');
    stdout.write('Enter your choice: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        account.deposit();
        break;
      case '2':
        account.withdraw();
        break;
      case '3':
        account.displayBalance();
        break;
      case '4':
        print('Thank you! Have a great day.');
        return;
      default:
        print('Invalid choice, please try again.');
    }
  }
}

class BankAccount {
  int balance;
// Inetializing the balance to be 0
  BankAccount() : balance = 0;

  void deposit() {
    stdout.write('Enter the amount to deposit: ');
    String? input = stdin.readLineSync();
    int? amount = int.tryParse(input ?? '');
    if (amount != null && amount > 0) {
      balance += amount;
      print('Deposit successful. New Balance: ${balance} FCFA');
    } else {
      print('Invalid amount. Please enter a positive number.');
    }
  }

  void withdraw() {
    stdout.write('Enter the amount to withdraw: ');
    String? input = stdin.readLineSync();
    int? amount = int.tryParse(input ?? '');
    if (amount != null && amount > 0) {
      if (amount <= balance) {
        balance -= amount;
        print('Withdrawal successful. New Balance: ${balance} FCFA');
      } else {
        print('Insufficient balance.');
      }
    } else {
      print('Invalid amount. Please enter a positive number.');
    }
  }

  void displayBalance() {
    print('Current Balance: ${balance} FCFA');
  }
}
