import 'dart:math';
import 'dart:io';

void main() {
  final _ = stdin.readLineSync();
  final integers =
      stdin.readLineSync().split(' ').map((e) => int.parse(e)).toList();
  final countsDivisibleBy2 = integers
      .map(
        (e) => _getCountDivisibleBy2(
          integer: e,
          count: 0,
        ),
      )
      .toList();
  print(countsDivisibleBy2.reduce(min));
}

int _getCountDivisibleBy2({
  int integer,
  int count,
}) {
  if (integer.isOdd || integer < 1) return count;
  return _getCountDivisibleBy2(
    integer: integer ~/ 2,
    count: count + 1,
  );
}
