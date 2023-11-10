// Kamera sınıfını oluşturuyoruz
class Kamera {
  int id_;
  String brand_;
  String color_;
  double prize_;

  Kamera(this.id_, this.brand_, this.color_, this.prize_);
  //getter ve setter yöntemleri
  int get id => id_;
  set id(int value) => id_ = value;

  String get brand => brand_;
  set brand(String value) => brand_ = value;

  String get color => color_;
  set color(String value) => color_ = value;

  double get prize => prize_;
  set prize(double value) => prize_ = value;
}

void main() {
  //Kamera nesnelerini oluşturuyoruz.
  Kamera kamera1 = Kamera(1, "Nikon", "Siyah", 799.99);
  Kamera kamera2 = Kamera(2, "Canon", "Gri", 699.99);
  Kamera kamera3 = Kamera(3, "Sony", "Beyaz", 899.99);

  //Kamera nesnelerinin detaylarını yazdırıyoruz
  print(
      "Kamera 1 - ID: ${kamera1.id}, Marka: ${kamera1.brand}, Renk: ${kamera1.color}, Fiyat: ${kamera1.prize}");
  print(
      "Kamera 2 - ID: ${kamera2.id}, Marka: ${kamera2.brand}, Renk: ${kamera2.color}, Fiyat: ${kamera2.prize}");
  print(
      "Kamera 3 - ID: ${kamera3.id}, Marka: ${kamera3.brand}, Renk: ${kamera3.color}, Fiyat: ${kamera3.prize}");
}
