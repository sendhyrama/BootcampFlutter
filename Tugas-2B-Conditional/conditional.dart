// Soal 1 (Ternary Operator)
import 'dart:io';
void main() {
  print("Mau menginstall aplikasi? (Y/T): ");
  String? answer = stdin.readLineSync();

  String message = answer!= null && answer.toUpperCase() == 'Y'
      ? "Anda akan menginstall aplikasi dart"
      : "Aborted";
  print(message);
}

// Soal 2 (If-else if & else)
import 'dart:io';
void main() {
  print("Masukkan nama: ");
  String? nama = stdin.readLineSync();
  print("Masukkan peran (Penyihir/Guard/Werewolf): ");
  String? peran = stdin.readLineSync();

  if (nama == null || nama.isEmpty) {
    print("Nama harus diisi!");
  } else if (peran == null || peran.isEmpty) {
    print("Halo $nama, Pilih peranmu untuk memulai game!");
  } else {
    print("Selamat datang di Dunia Werewolf, $nama");
    if (peran.toLowerCase() == "penyihir") {
      print("Halo Penyihir $nama, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (peran.toLowerCase() == "guard") {
      print("Halo Guard $nama, kamu akan membantu melindungi temanmu dari serangan werewolf.");
    } else if (peran.toLowerCase() == "werewolf") {
      print("Halo Werewolf $nama, Kamu akan memakan mangsa setiap malam!");
    } else {
      print("Peran yang dimasukkan tidak valid!");
    }
  }
}

// Soal 3 (Switch Case 1 - With I/O)
import 'dart:io';
void main() {
  print("Masukkan hari (Senin/Minggu): ");
  String? hari = stdin.readLineSync();

  switch (hari?.toLowerCase()) {
    case "senin":
      print("Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.");
    case "selasa":
      print("Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.");
    case "rabu":
      print("Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.");
    case "kamis":
      print("Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.");
    case "jumat":
      print("Hidup tak selamanya tentang pacar.");
    case "sabtu":
      print("Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.");
    case "minggu":
      print("Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.");
    default:
      print("Hari yang dimasukkan tidak valid!");
      break;
  }
}

// Soal 4 (Switch Case 2 - Without I/O)
void main() {
  var tanggal = 1;
  var bulan = 5;
  var tahun = 1945;

  String formatTanggal(int tanggal, int bulan, int tahun) {
    String namaBulan;
  
  switch (bulan) {
    case 1:
      namaBulan = 'Januari';
      break;
    case 2:
      namaBulan = 'Februari';
      break;
    case 3:
      namaBulan = 'Maret';
      break;
    case 4:
      namaBulan = 'April';
      break;
    case 5:
      namaBulan = 'Mei';
      break;
    case 6:
      namaBulan = 'Juni';
      break;
    case 7:
      namaBulan = 'Juli';
      break;
    case 8:
      namaBulan = 'Agustus';
      break;
    case 9:
      namaBulan = 'September';
      break;
    case 10:
      namaBulan = 'Oktober';
      break;
    case 11:
      namaBulan = 'November';
      break;
    case 12:
      namaBulan = 'Desember';
      break;
    default:
      namaBulan = 'Invalid';
      break;
  }
  
  if (namaBulan == 'Invalid') {
    return 'Bulan yang dimasukkan tidak valid!';
  } else {
    return '$tanggal $namaBulan $tahun';
  }
}

  print(formatTanggal(tanggal, bulan, tahun));
}
