import 'dart:io';
import 'dart:math';

void main() {
  final cardCount = int.tryParse(stdin.readLineSync() ?? '');
  if (cardCount == null) return;
  final numbers =
      (stdin.readLineSync() ?? '').split(' ').map(int.parse).toList();
  final aliceNumbers = <int>[];
  final bobNumbers = <int>[];

  for (var i = 1; i <= cardCount; i++) {
    final isAliceTurn = i.isOdd;
    final maxNumber = numbers.reduce(max);
    isAliceTurn ? aliceNumbers.add(maxNumber) : bobNumbers.add(maxNumber);
    numbers.remove(maxNumber);
  }

  final difference =
      aliceNumbers.reduce((a, b) => a + b) - bobNumbers.reduce((a, b) => a + b);

  print(difference);
}
