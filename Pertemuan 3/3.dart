int cariKPK(int a, int b) {
  int max = a > b ? a : b;

  while (true) {
    if (max % a == 0 && max % b == 0) {
      return max;
    }
    max++;
  }
}

void main() {
  int bil1 = 12;
  int bil2 = 8;
  int kpk = cariKPK(bil1, bil2);

  print("Bilangan 1: $bil1");
  print("Bilangan 2: $bil2");
  print("KPK $bil1 dan $bil2 = $kpk");
}
