class BankAccount {
  final String accountNumber;
  final String name;
  double _balance = 0.0;

  BankAccount(this.accountNumber, this.name);

  double get balance => _balance;

  void deposit(double amount) {
    if (amount <= 0) {
      print('Jumlah deposit harus lebih dari 0.');
    } else {
      _balance += amount;
      print('Deposit berhasil sebesar Rp${amount.toStringAsFixed(2)}');
    }
  }

  void withdraw(double amount) {
    if (amount <= 0) {
      print('Jumlah penarikan harus lebih dari 0.');
    } else if (amount > _balance) {
      print('Saldo tidak cukup. Penarikan gagal.');
    } else {
      _balance -= amount;
      print('Penarikan berhasil sebesar Rp${amount.toStringAsFixed(2)}');
    }
  }

  void displayAccountInfo() {
    print('\n=== Informasi Akun ===');
    print('Nama Pemegang Akun  : $name');
    print('Nomor Akun          : $accountNumber');
    print('Saldo               : Rp${_balance.toStringAsFixed(2)}');
  }
}
