// Soal 3 (List Multidimensi)
void main() {
  var input = [
    ["0001", "Roman Alamsyah", "Bandar Lampung", "21/05/1989", "Membaca"],
    ["0002", "Dika Sembiring", "Medan", "10/10/1992", "Bermain Gitar"],
    ["0003", "Winona", "Ambon", "25/12/1965", "Memasak"],
    ["0004", "Bintang Senjaya", "Martapura", "6/4/1970", "Berkebun"]
  ];
  dataHandling(input);
}

void dataHandling(List<List<String>> inputData) {
  for (var data in inputData) {
    if (data.length == 5) {
      String ID = data[0];
      String nama = data[1];
      String ttl = data[2] + " " + data[3];
      String hobi = data[4];

      print("Nomor ID: $ID");
      print("Nama Lengkap: $nama");
      print("TTL: $ttl");
      print("Hobi: $hobi");
      print("");
    } else {
      print("Invalid format!");
    }
  }
}