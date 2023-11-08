import 'dart:io';
import 'dart:async';

void main() async {
  stdout.write("Birinci tamsayıyı girin: ");
  int sayi1 = int.parse(stdin.readLineSync()!);

  stdout.write("İkinci tamsayıyı girin: ");
  int sayi2 = int.parse(stdin.readLineSync()!);

  await Future.delayed(Duration(seconds: 1));
  stdout.write("3...");

  await Future.delayed(Duration(seconds: 1));
  stdout.write("2...");

  await Future.delayed(Duration(seconds: 1));
  stdout.write("1...\n");

  int toplam = sayi1 + sayi2;

  print("Toplam: $toplam");
}
