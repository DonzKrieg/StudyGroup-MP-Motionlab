Week - 5

GetX adalah package Flutter yang menawarkan berbagai fitur untuk mempermudah pengembangan aplikasi mobile, seperti state management, routing, dan dependency injection. Berikut adalah beberapa pola yang digunakan dalam GetX:
- State Management: GetX menggunakan reactive programming untuk state management. Dengan menggunakan Rx (reactive) variabel, aplikasi secara otomatis akan merespons perubahan data tanpa perlu menggunakan setState() atau metode lain yang lebih rumit.
- Controller: GetX memperkenalkan konsep Controller yang berfungsi untuk memisahkan logika dari UI. Controller bertanggung jawab untuk mengelola state dan fungsi aplikasi.
- Routing: GetX menyediakan cara yang sangat sederhana untuk menangani routing dan navigasi. Dengan menggunakan Get.to(), Get.back(), dan Get.off(), kita dapat melakukan navigasi antar halaman tanpa perlu menulis kode navigasi yang kompleks.
- Dependency Injection: GetX mendukung dependency injection yang memungkinkan kita untuk mengelola instansi kelas dan menyediakan mereka ke berbagai bagian aplikasi. Ini membantu menjaga kode tetap modular dan terstruktur.
- GetBuilder: GetBuilder adalah widget yang digunakan untuk membangun UI berdasarkan perubahan pada controller. Biasanya digunakan ketika kita ingin merender ulang widget tanpa perlu menggunakan reactive state seperti obs.
