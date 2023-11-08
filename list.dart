import 'dart:async';
import 'dart:io';

Future<void> main() async {
  List<int> numbers = await getNumberListFromUser();
  List<int> multipliedNumbers = await multiplyNumbersAsync(numbers);

  print('Çarpılmış Liste: $multipliedNumbers');
}

Future<List<int>> getNumberListFromUser() async {
  print('Tam sayı listesini girin (örn: 1 2 3):');
  String input = stdin.readLineSync()!;
  List<int> numbers = input.split(' ').map((e) => int.parse(e)).toList();
  return numbers;
}

Future<List<int>> multiplyNumbersAsync(List<int> numbers) async {
  List<Future<int>> multipliedFutures = [];
  for (int number in numbers) {
    Future<int> multiplied = multiplyAsync(number);
    multipliedFutures.add(multiplied);
  }
  return await Future.wait(multipliedFutures);
}

Future<int> multiplyAsync(int number) async {
  return await Future.delayed(Duration(seconds: 1), () => number * 2);
}
