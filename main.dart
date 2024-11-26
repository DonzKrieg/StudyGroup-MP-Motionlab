import 'dart:io';
import 'bank.dart';

void main() {
  stdout.write('Masukkan nama Anda: ');
  String? name = stdin.readLineSync();
  stdout.write('Masukkan nomor akun Anda: ');
  String? accountNumber = stdin.readLineSync();

  if (name == null ||
      name.isEmpty ||
      accountNumber == null ||
      accountNumber.isEmpty) {
    print('Nama dan nomor akun wajib diisi.');
    return;
  }

  BankAccount account = BankAccount(accountNumber, name);

  while (true) {
    print('\n=== Selamat Datang di MyBank ===');
    print('1. Cek Saldo');
    print('2. Deposit Saldo');
    print('3. Tarik Saldo');
    print('4. Informasi Akun');
    print('5. Keluar');
    stdout.write('Pilih: ');

    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('\nSaldo Anda: Rp${account.balance.toStringAsFixed(2)}');
        break;

      case '2':
        stdout.write('\nMasukkan jumlah deposit: Rp');
        String? depositInput = stdin.readLineSync();
        double? depositAmount = double.tryParse(depositInput ?? '');

        if (depositAmount == null || depositAmount < 0) {
          print('Input tidak valid.');
        } else {
          account.deposit(depositAmount);
        }
        break;

      case '3':
        stdout.write('\nMasukkan jumlah penarikan: Rp');
        String? withdrawInput = stdin.readLineSync();
        double? withdrawAmount = double.tryParse(withdrawInput ?? '');

        if (withdrawAmount == null || withdrawAmount < 0) {
          print('Input tidak valid.');
        } else {
          account.withdraw(withdrawAmount);
        }
        break;

      case '4':
        account.displayAccountInfo();
        break;

      case '5':
        print('Terima kasih telah menggunakan aplikasi kami. Sampai jumpa!');
        print(
            'Percayalah kepada kami dalam menjaga keuangan anda, tidak seperti dia yang terus mengkhianati kepercayaan dan juga harapan anda :)');
        exit(0);

      default:
        print('Pilihan tidak valid. Silakan coba lagi.');
    }
  }
}
