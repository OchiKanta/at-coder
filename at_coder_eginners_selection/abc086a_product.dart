import 'dart:io';

void main() {
  final valueText = stdin.readLineSync() ?? '';
  if (valueText.isEmpty) return;
  try {
    final values = valueText.split(' ').map((e) => int.parse(e)).toList();
    final product = values.product;
    print(product.textEvenOrOdd);
  } catch (e) {
    print('ERROR: Please check input. We can\'t parse to int.');
  }
}

extension IntEx on int {
  String get textEvenOrOdd => this.isEven ? 'Even' : 'Odd';
}

extension ListIntEx on List<int> {
  int get product => reduce((a, b) => a * b);
}
