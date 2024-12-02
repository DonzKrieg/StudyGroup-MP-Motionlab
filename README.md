Week - 3 (Slicing UI)

Widget -> Komponen yang saling terhubung untuk membentuk interfaces
"Menggunakan konsep widget tree (parent and child)"

-- Semua yang terpampang dilayar adalah Widget --

- MaterialApp: implementasi desain material desain
- Scaffold: widget utama atau juga disebut widget kerangka

Struktur Project Flutter

- lib: folder dimana file dart disimpan, dan yang paling sering kita gunakan dalam membuat project.
- android dan ios: tempat kode native disimpan untuk dimanfaatkan oleh flutter.
-pubspec.yaml: Tempat untuk mengatur dependencies atau konfigurasi dari kode kode tambahan yang ingin kita gunakan.

Widget Tree
MyApp -> MaterialApp -> Scaffold -> Container -> Column/Row dll.

Widget SafeArea berguna agar letak suatu elemen pada output tidak mengganggu interface dari device itu sendiri.
Widget Container dibuat untuk membuat suatu objek yang dapat kita manipulasi seperti tinggi, lebar, warna, dll.
Widget Icon dibuat untuk menampilkan icon ke dalam aplikasi.
Widget Image dibuat untuk menampilkan gambar pada aplikasi, dapat diakses melalui library ataupun link website.
- From lib: buat folder baru dan gunakan image.asset
- From Network: input link gambar/image
Note: jangan lupa tambahkan konfigurasi asset ke dalam pubspec.yaml ketika mengakses lewat library
Widget Button digunakan untuk membuat tampilan tombol dimana tombolnya memiliki atribut seperti fungsi, text, color, dll.

Widget Layouting
Column: posisi elemen secara vertikal kebawah
Row: posisi elemen ke samping secara horizontal
Stack: Elemen secara bertumpuk.

memiliki fungsi seperti main axis dan cross axis (tata letak)
