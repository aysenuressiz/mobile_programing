//enum sınıfını tanımlıyoruz
enum Cinsiyet { erkek, kadin, diger }

void main() {
  // Cinsiyet enum sınıfının tüm değerlerini yazdırıyoruz
  print("Cinsiyet Değerleri:");
  for (var cinsiyet in Cinsiyet.values) {
    print(cinsiyet);
  }
}
