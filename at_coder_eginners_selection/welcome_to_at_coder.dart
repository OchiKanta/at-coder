import 'dart:io';

void main() {
  final value = loadConsole(type: LoadConsoleType.oneInt) as int;
  final values = loadConsole(type: LoadConsoleType.twoInts) as List<int>;
  final unit = loadConsole(type: LoadConsoleType.unit) as String;
  final sum = [value, ...values].sum;
  print(sum.toString() + ' ' + unit);
}

dynamic loadConsole({
  LoadConsoleType type,
}) {
  final text = stdin.readLineSync() ?? '';
  if (text.isEmpty) return null;
  switch (type) {
    case LoadConsoleType.oneInt:
      try {
        final value = int.parse(text);
        return value;
      } catch (e) {
        print('ERROR: Please check input. We can\'t parse to int.');
      }
      break;
    case LoadConsoleType.twoInts:
      try {
        final tests = text.split(' ');
        final values = tests.map((e) => int.parse(e)).toList();
        return values;
      } catch (e) {
        print('ERROR: Please check input. We can\'t parse to int.');
        return null;
      }
       break;
    case LoadConsoleType.unit:
      return text;
    default:
      break;
  }
}

enum LoadConsoleType {
  oneInt,
  twoInts,
  unit,
}

extension ListIntEx on List<int> {
  int get sum => reduce((a, b) => a + b);
}
