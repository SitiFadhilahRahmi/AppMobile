import 'dart:io';

//Perhitungan bangun datar
double luasPersegi(double sisi) {
  return sisi * sisi;
}

double luasPersegiPanjang(double panjang, double lebar) {
  return panjang * lebar;
}

double luasLingkaran(double jari) {
  return 3.14 * jari * jari;
}

//perhitungan bangun ruang
double volumeKubus(double sisi) {
  return sisi * sisi * sisi;
}

double volumeBalok(double panjang, double lebar, double tinggi) {
  return panjang * lebar * tinggi;
}

double volumeBola(double jari) {
  return (4 / 3) * 3.14 * jari * jari * jari;
}

void main() {
  print("Aplikasi Hitung Luas & Volume");
  print("Pilih jenis perhitungan:");
  print("1. Bangun Datar");
  print("2. Bangun Ruang");
  String? pilihan = stdin.readLineSync();

  if (pilihan == '1') {
    // pilihan Bangun Datar
    print("\nPilih Bangun Datar:");
    print("1. Persegi");
    print("2. Persegi Panjang");
    print("3. Lingkaran");
    String? bangunDatar = stdin.readLineSync();

    if (bangunDatar == '1') {
      print("Masukkan sisi persegi: ");
      double sisi = double.parse(stdin.readLineSync()!);
      print("Luas Persegi = ${luasPersegi(sisi)}");
    } else if (bangunDatar == '2') {
      print("Masukkan panjang: ");
      double panjang = double.parse(stdin.readLineSync()!);
      print("Masukkan lebar: ");
      double lebar = double.parse(stdin.readLineSync()!);
      print("Luas Persegi Panjang = ${luasPersegiPanjang(panjang, lebar)}");
    } else if (bangunDatar == '3') {
      print("Masukkan jari-jari: ");
      double jari = double.parse(stdin.readLineSync()!);
      print("Luas Lingkaran = ${luasLingkaran(jari)}");
    } else {
      print("pilihan tidak valid!");
    }

  } else if (pilihan == '2') {
    // pilihan Bangun Ruang
    print("\nPilih Bangun Ruang:");
    print("1. Kubus");
    print("2. Balok");
    print("3. Bola");
    String? bangunRuang = stdin.readLineSync();

    if (bangunRuang == '1') {
      print("Masukkan sisi kubus: ");
      double sisi = double.parse(stdin.readLineSync()!);
      print("Volume Kubus = ${volumeKubus(sisi)}");
    } else if (bangunRuang == '2') {
      print("Masukkan panjang: ");
      double panjang = double.parse(stdin.readLineSync()!);
      print("Masukkan lebar: ");
      double lebar = double.parse(stdin.readLineSync()!);
      print("Masukkan tinggi: ");
      double tinggi = double.parse(stdin.readLineSync()!);
      print("Volume Balok = ${volumeBalok(panjang, lebar, tinggi)}");
    } else if (bangunRuang == '3') {
      print("Masukkan jari-jari: ");
      double jari = double.parse(stdin.readLineSync()!);
      print("Volume Bola = ${volumeBola(jari)}");
    } else {
      print("pilihan tidak valid!");
    }

  } else {
    print("pilihan tidak valid!");
  }
}
