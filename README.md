Git Summary

- git init: Menginisialisasi repository GIT di folder
  Membuat folder .git di direktori proyek sehingga Git dapat mulai melacak perubahan file di dalamnya.
  
- git add: Menambahkan perubahan pada file atau folder.
  git add <file> (Menambahkan satu file)
  git add . (Menambahkan semua file yang diubah)
  
- git commit: Membuat titik versi baru dalam proyek yang dibuat.
  git commit -m "Pesan commit"
  
- git status: Menampilkan status dari file yang ada di repository.
  
- git push: Mengirim commit dari repository lokal ke repository jarak jauh.
  git push origin <nama-branch>
  
- git pull: Mengupdate repository lokal agar sinkron dengan repository jarak jauh.
  
- git branch: Menampilkan semua branch yang ada atau membuat branch baru.
  git branch (Melihat semua branch)
  git branch <nama-branch> (Membuat branch baru)
  
- git log: Menampilkan daftar riwayat commit pada repository.
  
- git remote: Mengelola koneksi ke repository jarak jauh.
  git remote add origin <url-repo> (Menambahkan remote baru)
  
- git reset: Membatalkan perubahan di staging area atau mengembalikan commit.
  
- git stash: Menyimpan sementara perubahan yang belum di-commit.

Penggunaan HTTPS dan SSH
1. Https
   Ketika menggunakan HTTPS untuk mengakses repository Git, otentikasi akan meminta username dan password atau personal access token (PAT) setiap kali melakukan operasi seperti git push atau git pull.
   
2. SSH
   Saat menggunakan SSH, Anda harus membuat sepasang kunci (public dan private). Public key diunggah ke server (misalnya, GitHub), dan private key disimpan di komputer Anda.
   Operasi seperti git push atau git pull tidak akan meminta username/password karena otentikasi dilakukan melalui kunci SSH.
