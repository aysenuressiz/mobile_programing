import 'dart:io';

class Quiz {
  List<Soru> sorular;
  int mevcutSoruIndex = 0;
  int puan = 0;

  Quiz(this.sorular);

  bool sonrakiSoruVarMi() {
    return mevcutSoruIndex < sorular.length;
  }

  Soru mevcutSoruyuGetir() {
    return sorular[mevcutSoruIndex];
  }

  void soruCevapla(int kullaniciCevabi) {
    if (mevcutSoruyuGetir().dogruMu(kullaniciCevabi)) {
      puan += 10;
    } else {
      puan -= 3;
    }

    if (sonrakiSoruVarMi()) {
      mevcutSoruIndex++;
    }
  }

  void puanGoster() {
    int dogruCevapSayisi = puan ~/ 10;
    int yanlisCevapSayisi = sorular.length - dogruCevapSayisi;

    print("\nQuiz tamamlandı.");
    print("Doğru cevaplanan soru sayısı: $dogruCevapSayisi ");
    print("Yanlış cevaplanan soru sayısı: $yanlisCevapSayisi ");

    int yeniPuan = (dogruCevapSayisi * 10) + (yanlisCevapSayisi * (-3));
    print("Toplam Puan: $yeniPuan");
    if (yeniPuan >= 50) {
      print("Tebrikler, barajı geçtiniz!");
    } else
      print("Üzgünüz barajı geçemediniz, lütfen tekrar deneyiniz!");
  }
}

class Soru {
  String metin;
  List<String> secenekler;
  int dogruSecenekIndex;

  Soru(this.metin, this.secenekler, this.dogruSecenekIndex);

  bool dogruMu(int kullaniciCevabi) {
    return kullaniciCevabi == dogruSecenekIndex;
  }

  void goruntule() {
    print("\nSoru: $metin");

    for (int i = 0; i < secenekler.length; i++) {
      print("${i + 1}. ${secenekler[i]}");
    }
  }
}

void main() {
  List<Soru> sorular = [
    Soru("Fransanın başkenti nedir?", ["Paris", "Berlin", "Londra"], 0),
    Soru("Hangi gezegen Kırmızı Gezegen olarak bilinir?",
        ["Venüs", "Mars", "Jüpiter"], 1),
    Soru("En büyük memeli hayvan nedir?", ["Fil", "Mavi Balina", "Zürafa"], 1),
    Soru(
        "II. Dünya Savaşı hangi yılda sona erdi?", ["1943", "1945", "1950"], 1),
    Soru("'Romeo ve Juliet' kimin eseridir?",
        ["Charles Dickens", "William Shakespeare", "Jane Austen"], 1),
    Soru("Japonya'nın başkenti nedir?", ["Seul", "Pekin", "Tokyo"], 2),
    Soru("Dünyanın en büyük okyanusu hangisidir?",
        ["Atlantik", "Hint", "Pasifik"], 2),
    Soru("Google tarafından geliştirilen programlama dili hangisidir?",
        ["Java", "C++", "Dart"], 2),
    Soru("Hücrenin güç merkezi nedir?", ["Çekirdek", "Mitokondri", "Ribozom"],
        1),
    Soru("Doğuşun Ülkesi olarak bilinen ülke hangisidir?",
        ["Çin", "Japonya", "Güney Kore"], 1)
  ];

  Quiz quiz = Quiz(sorular);

  print("Quiz Uygulamasına Hoş Geldiniz!");

  while (quiz.sonrakiSoruVarMi()) {
    Soru mevcutSoru = quiz.mevcutSoruyuGetir();
    mevcutSoru.goruntule();

    stdout.write("Cevabınızı girin (1, 2 veya 3): ");
    int? kullaniciCevabi = int.tryParse(stdin.readLineSync() ?? "");
    kullaniciCevabi ??= -1;

    if (kullaniciCevabi >= 1 && kullaniciCevabi <= 3) {
      quiz.soruCevapla(kullaniciCevabi -
          1); // Kullanıcı girişini doğru index'e ayarlamak için
    } else {
      print("Geçersiz giriş. Lütfen 1, 2 veya 3 girin.");
    }
  }

  quiz.puanGoster();
}
