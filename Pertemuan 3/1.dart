import 'dart:math';

void buatMatriks(int A, int B) {
  // Membuat matriks A x B dengan elemen random dari 1 hingga 10
  List<List<int>> matriks = List<List<int>>.generate(
    A,
    (int _) => List<int>.generate(
      B,
      (int __) => Random().nextInt(10) + 1,
    ),
  );

  // Menampilkan matriks asli
  print("Matriks ${A}x${B}:");
  for (var row in matriks) {
    print(row.join(' '));
  }

  // Transpose matriks (mengubah baris menjadi kolom dan sebaliknya)
  List<List<int>> transpose = List<List<int>>.generate(
    B,
    (int i) => List<int>.generate(
      A,
      (int j) => matriks[j][i],
    ),
  );

  // Menampilkan matriks hasil transpose
  print("\nHasil transpose:");
  for (var row in transpose) {
    print(row.join(' '));
  }
}

void main() {
  buatMatriks(3, 4); // Contoh pemanggilan fungsi dengan matriks 3x4
}
