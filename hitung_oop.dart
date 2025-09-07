import 'dart:io';

// Class Bangun Datar
class Persegi {
  double sisi;
  Persegi(this.sisi);

  double hitungLuas() {
    return sisi * sisi;
  }
}

class PersegiPanjang {
  double panjang, lebar;
  PersegiPanjang(this.panjang, this.lebar);

  double hitungLuas() {
    return panjang * lebar;
  }
}

class Lingkaran {
  double jari;
  Lingkaran(this.jari);

  double hitungLuas() {
    return 3.14 * jari * jari;
  }
}

//Class Bangun Ruang
class Kubus {
  double sisi;
  Kubus(this.sisi);

  double hitungVolume() {
    return sisi * sisi * sisi;
  }
}

class Balok {
  double panjang, lebar, tinggi;
  Balok(this.panjang, this.lebar, this.tinggi);

  double hitungVolume() {
    return panjang * lebar * tinggi;
  }
}

class Bola {
  double jari;
  Bola(this.jari);

  double hitungVolume() {
    return (4 / 3) * 3.14 * jari * jari * jari;
  }
}

void main() {
  print("Aplikasi Hitung Luas & Volume");
  print("Pilih jenis perhitungan:");
  print("1. Bangun Datar");
  print("2. Bangun Ruang");
  String? pilihan = stdin.readLineSync();

  if (pilihan == '1') {
    //Bangun Datar
    print("\nPilih Bangun Datar:");
    print("1. Persegi");
    print("2. Persegi Panjang");
    print("3. Lingkaran");
    String? bangunDatar = stdin.readLineSync();

    if (bangunDatar == '1') {
      print("Masukkan sisi persegi: ");
      double sisi = double.parse(stdin.readLineSync()!);
      Persegi persegi = Persegi(sisi);
      print("Luas Persegi = ${persegi.hitungLuas()}");
    } else if (bangunDatar == '2') {
      print("Masukkan panjang: ");
      double panjang = double.parse(stdin.readLineSync()!);
      print("Masukkan lebar: ");
      double lebar = double.parse(stdin.readLineSync()!);
      PersegiPanjang pp = PersegiPanjang(panjang, lebar);
      print("Luas Persegi Panjang = ${pp.hitungLuas()}");
    } else if (bangunDatar == '3') {
      print("Masukkan jari-jari: ");
      double jari = double.parse(stdin.readLineSync()!);
      Lingkaran lingkaran = Lingkaran(jari);
      print("Luas Lingkaran = ${lingkaran.hitungLuas()}");
    } else {
      print("Pilihan tidak valid!");
    }

  } else if (pilihan == '2') {
    //Bangun Ruang
    print("\nPilih Bangun Ruang:");
    print("1. Kubus");
    print("2. Balok");
    print("3. Bola");
    String? bangunRuang = stdin.readLineSync();

    if (bangunRuang == '1') {
      print("Masukkan sisi kubus: ");
      double sisi = double.parse(stdin.readLineSync()!);
      Kubus kubus = Kubus(sisi);
      print("Volume Kubus = ${kubus.hitungVolume()}");
    } else if (bangunRuang == '2') {
      print("Masukkan panjang: ");
      double panjang = double.parse(stdin.readLineSync()!);
      print("Masukkan lebar: ");
      double lebar = double.parse(stdin.readLineSync()!);
      print("Masukkan tinggi: ");
      double tinggi = double.parse(stdin.readLineSync()!);
      Balok balok = Balok(panjang, lebar, tinggi);
      print("Volume Balok = ${balok.hitungVolume()}");
    } else if (bangunRuang == '3') {
      print("Masukkan jari-jari: ");
      double jari = double.parse(stdin.readLineSync()!);
      Bola bola = Bola(jari);
      print("Volume Bola = ${bola.hitungVolume()}");
    } else {
      print("Pilihan tidak valid!");
    }

  } else {
    print("Pilihan tidak valid!");
  }
}