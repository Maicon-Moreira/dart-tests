import 'dart:io';
import 'dart:core';
// import 'dart:svg';
// import 'dart:time';

void main() {
  DateTime start = new DateTime.now();

  Generator generator = new Generator();

  int numberPrimes = 100;

  List<int> primes = generator.generateFirst(numberPrimes);

  savePrimes(primes);

  DateTime end = new DateTime.now();

  int difference = end.difference(start).inMilliseconds;

  print(difference);
}

void savePrimes(List<int> primes) {
  int numberPrimes = primes.length;

  File file = new File('First $numberPrimes Primes.txt');

  String content = primes.toString();

  file.writeAsStringSync(content);
}

class Generator {
  List generateFirst(int number) {
    List<int> primes = [];

    int generated = 0;

    int counter = 1;

    while (true) {
      if (generated == number) break;

      if (this.isPrime(counter)) {
        primes.add(counter);
        generated++;
      }

      counter++;
    }

    return primes;
  }

  bool isPrime(int number) {
    for (int divider = 2; divider <= number / 2; divider++) {
      if (number % divider == 0) {
        return false;
      }
    }

    return true;
  }
}
