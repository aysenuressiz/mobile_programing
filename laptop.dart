//Laptop sınıfını oluşturuyoruz.
class Laptop {
  int id;
  String name;
  int ram;

  Laptop(this.id, this.name, this.ram);

  void printDetails() {
    print("Laptop ID: $id");
    print("Laptop Name: $name");
    print("RAM: $ram GB");
  }
}

void main() {
  // Laptop nesnelerini oluşturuyoruz.
  Laptop laptop1 = Laptop(1, "HP Pavilion", 8);
  Laptop laptop2 = Laptop(2, "Dell XPS", 16);
  Laptop laptop3 = Laptop(3, "Lenovo İdeaPad Gaming ", 16);

  // Laptop nesnelerinin detaylarını yazdırıyoruz.
  laptop1.printDetails();
  laptop2.printDetails();
  laptop3.printDetails();
}
