void cariDalamList(int nilai) {
  // Inisialisasi list 2D
  List<List<int>> list2D = <List<int>>[
    [5, 10, 15],
    [2, 4, 6, 8],
    [1, 4, 9, 16, 25],
    [3, 4, 5, 6, 7, 8],
  ];

  // Cetak isi list 2D
  print("Isi List:");
  for (var row in list2D) {
    print(row.join(' '));
  }

  // Cari nilai dalam list
  print("\nBilangan yang dicari: $nilai");
  bool ditemukan = false;

  for (int i = 0; i < list2D.length; i++) {
    for (int j = 0; j < list2D[i].length; j++) {
      if (list2D[i][j] == nilai) {
        print("$nilai berada di: baris ${i + 1} kolom ${j + 1}");
        ditemukan = true;
      }
    }
  }

  if (!ditemukan) {
    print("$nilai tidak ditemukan dalam List.");
  }
}

void main() {
  // Contoh penggunaan fungsi cariDalamList
  cariDalamList(2);
  cariDalamList(5);
}
