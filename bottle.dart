// Bottle arayüzü
abstract class Bottle {
  void open();
}

// CokeBottle sınıfı, Bottle arayüzünü uygular
class CokeBottle implements Bottle {
  @override
  void open() {
    print("Kola şişesi açıldı.");
  }
}

// Bottle arayüzü için fabrika constructor
class BottleFactory {
  static Bottle createBottle() {
    return CokeBottle();
  }
}

void main() {
  // Bottle arayüzü için fabrika constructor kullanarak CokeBottle nesnesi oluşturuyoruz.
  Bottle cokeBottle = BottleFactory.createBottle();

  // CokeBottle nesnesinin "open()" metodunu çağırıyoruz.
  cokeBottle.open();
}
