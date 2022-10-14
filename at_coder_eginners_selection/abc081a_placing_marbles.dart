import 'dart:io';

void main() {
  final strings = stdin.readLineSync();
  try {
    final integers = strings.split('').map((e) => int.parse(e)).toList();
    final sum = integers.sum;
    print(sum);
  } catch (_) {
    print('ERROR: Please check input. We can\'t parse to int.');
  }
}

extension ListIntEX on List<int> {
  int get sum => this.reduce((a, b) => a + b);
}
