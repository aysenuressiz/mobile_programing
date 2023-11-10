//Hayvan sınıfını oluşturuyoruz
class Hayvan {
  int id;
  String name;
  String color;

  Hayvan(this.id, this.name, this.color);
}

//Hayvan sınıfından Kedi sınıfını oluşturuyoruz
class Kedi extends Hayvan {
  String sound;
  Kedi(int id, String name, String color, this.sound) : super(id, name, color);
}

void main() {
  //Bir Kedi nesnesi oluşturuyoruz
  Kedi kedi = Kedi(1, "Minnoş", "Gri", "Miyav!");
  //Kedi nesnesinin detaylarını yazdırıyoruz
  print("Kedi ID: ${kedi.id}");
  print("Kedi Adı: ${kedi.name}");
  print("Kedi Rengi ${kedi.color}");
  print("Kedi Sesi: ${kedi.sound}");
}
