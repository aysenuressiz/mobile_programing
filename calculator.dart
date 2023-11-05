import 'dart:io';

void add({required int num1, required int num2, int? num3}) {
  int result = num1 + num2;
  if (num3 != null) {
    result += num3;
  }
  if (num3 == null) {
    print("Girdiğiniz 2 sayının toplamı: $result");
  } else {
    print("Girdiğiniz 3 sayının toplamı: $result");
  }
}

void sub({required int num1, required int num2}) {
  int result = num1 - num2;
  print("Girdiğiniz sayıların farkı: $result");
}

void mul({required int num1, required int num2}) {
  int result = num1 * num2;
  print("Girdiğiniz sayıların çarpımı: $result");
}

void div({required int num1, required int num2}) {
  if (num2 != 0) {
    double result = num1 / num2;
    print("Girdiğiniz sayıların bölümü: $result");
  } else {
    print("Sıfıra bölme hatası!");
  }
}

void main() {
  int n = 0;
  if (n == 0) {
    print("\n-------Hoşgeldiniz--------");
    n++;
  }

  while (true) {
    print("\nNe yapmak istiyorsunuz?");
    print("1.Toplama\n2.Çıkarma\n3.Çarpma\n4.Bölme\n5.Çıkış \n");
    print("Seçiminizi giriniz:");
    int ch = int.parse(stdin.readLineSync()!);

    switch (ch) {
      case 1:
        print("Toplamak istediğiniz en fazla 3 sayı giriniz:");
        add(
            num1: int.parse(stdin.readLineSync()!),
            num2: int.parse(stdin.readLineSync()!),
            num3: int.tryParse(stdin.readLineSync()!));
        break;
      case 2:
        print("Çıkarmak istediğiniz 2 sayı giriniz:");
        sub(
            num1: int.parse(stdin.readLineSync()!),
            num2: int.parse(stdin.readLineSync()!));
        break;
      case 3:
        print("Çarpmak istediğiniz 2 sayı giriniz:");
        mul(
            num1: int.parse(stdin.readLineSync()!),
            num2: int.parse(stdin.readLineSync()!));
        break;
      case 4:
        print("Bölmek istediğiniz 2 sayı giriniz:");
        div(
            num1: int.parse(stdin.readLineSync()!),
            num2: int.parse(stdin.readLineSync()!));
        break;
      case 5:
        print("Çıkış yapılıyor...");
        print("Çıkış yapıldı.");
        exit(0);
      default:
        print(
            "Geçersiz seçim yaptınız, lütfen 1 ile 5 (dahil) arasında seçim yapınız.");
    }
  }
}
