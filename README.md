Week - 3 (Navigation and Package)

Callback Function: Fungsi didalam fungsi yg memberikan informasi
StatelessWidget: Kelas dimana isinya tidak ada perubahan yg terjadi
StatefulWidget: Kelas yang mana ada perubahan dimana isinya terdapat state yg dihandle oleh flutter

SetState Method
"Metode yg digunakan untuk memberitahu framework ketika ada suatu perubahan"

SetState dapat menimbulkan masalah terutama pada aplikasi yang sudah terhitung kompleks karena akan memakan banyak memori, sehingga CPU bekerja lebih keras dan performa device menurun.

Widget Tree
"Struktur hierarki widget yang membangun antarmuka(UI)"

Inherited Widget 
"Mengelola state dan berbagi dan diantara widget dalam pohon widget"

Navigator:
push(): Menambahkan halaman baru ke tumpukan navigasi (stack).
pop(): Menghapus halaman dari atas tumpukan navigasi.
pushReplacement(): Mengganti halaman saat ini dengan halaman baru.
pushNamed() dan popNamed(): Menggunakan rute bernama untuk navigasi yang lebih terstruktur.

Routes: Menghubungkan package yang diimplementasi pada main

Package di Flutter adalah kumpulan kode yang dapat digunakan kembali untuk menambahkan fitur atau fungsionalitas ke aplikasi.
Pub.dev: Repositori resmi untuk paket Flutter.
