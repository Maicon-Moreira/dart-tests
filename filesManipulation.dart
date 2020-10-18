import 'dart:io';
import 'dart:math';

void main() {
  Example example = new Example();

  example.read();

  example.write();
}

class Example {
  Example() {
    print('this is the constructor !!!!!');
  }

  void read() {
    print('-' * 100); // Python S2
    print('Read file test');

    File file = new File('file.txt');

    file.readAsString().then((String contents) {
      print(contents);
    });
  }

  void write() {
    print('-' * 100); // Python S2
    print('Write file test');

    File file = new File('written.txt');

    Random randomSeed = new Random();

    int randomNumber = randomSeed.nextInt(pow(2, 32));

    String fileContent = 'Random number: $randomNumber';

    file.writeAsString(fileContent);
  }
}
