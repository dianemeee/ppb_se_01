void main() {
  List<Map<String, dynamic>> daftarMahasiswa = [
    {
      "nama": "John Doe",
      "ipk": 3.88,
      "isMarried": false,
    },
    {
      "nama": "Andi Doe",
      "ipk": 3.78,
      "isMarried": true,
    },
    {
      "nama": "Budi Doe",
      "ipk": 3.68,
      "isMarried": true,
    },
  ];

  double rataRataIPK = hitungRataIPK(daftarMahasiswa);
  int jumlahMenikah = hitungJumlahMenikah(daftarMahasiswa);

  print("Rata-rata IPK: $rataRataIPK");
  print("Jumlah mahasiswa yang sudah menikah: $jumlahMenikah");
}

double hitungRataIPK(List<Map<String, dynamic>> mahasiswa) {
  double totalIPK = 0.0;

  for (var mhs in mahasiswa) {
    totalIPK += mhs['ipk'];
  }

  return totalIPK / mahasiswa.length;
}

int hitungJumlahMenikah(List<Map<String, dynamic>> mahasiswa) {
  int jumlahMenikah = 0;

  for (var mhs in mahasiswa) {
    if (mhs['isMarried'] == true) {
      jumlahMenikah++;
    }
  }

  return jumlahMenikah;
}
