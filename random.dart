import 'dart:math';

int? createRandom() {
  Random random = new Random();
  int randomNumber = random.nextInt(100);
  print("Random sayı: $randomNumber");

  if (randomNumber % 2 == 0) {
    print("Random sayı çift olduğu için durum random sayıya eşittir.");
    return randomNumber;
  } else {
    print("Random sayı tek olduğu için durum null olduğundan sıfırdır.");
    return null;
  }
}

void main() {
  int? durum = createRandom() ?? 0;
  print('Durum: $durum');
}
