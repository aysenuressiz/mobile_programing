class House {
  int id;
  String name;
  double prize;

  House(this.id, this.name, this.prize);
}

void main() {
  // Ev nesnelerini oluşturuyoruz.
  House ev1 = House(1, "Mavi Ev", 250000.0);
  House ev2 = House(2, "Kırmızı Ev", 300000.0);
  House ev3 = House(3, "Yeşil Ev", 200000.0);

  // Ev nesnelerini bir liste içine ekliyoruz.
  List<House> evler = [ev1, ev2, ev3];

  // Tüm evlerin detaylarını yazdırıyoruz.
  for (var ev in evler) {
    print("Ev ID: ${ev.id}");
    print("Ev Adı: ${ev.name}");
    print("Fiyat: ${ev.prize} TL");
    print("");
  }
}
