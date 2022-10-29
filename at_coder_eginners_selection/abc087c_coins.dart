import 'dart:io';

void main() {
  final fiveHundredYenSumCount = int.parse(stdin.readLineSync() ?? '');
  final oneHundredYenSumCount = int.parse(stdin.readLineSync() ?? '');
  final fiftyYenSumCount = int.parse(stdin.readLineSync() ?? '');
  final desiredAmount = int.parse(stdin.readLineSync() ?? '');
  var desiredAmountMatchPattern = 0;
  for (var fiveHundredYenCount = 0;
      fiveHundredYenCount <= fiveHundredYenSumCount;
      fiveHundredYenCount++) {
    for (var oneHundredYenCount = 0;
        oneHundredYenCount <= oneHundredYenSumCount;
        oneHundredYenCount++) {
      for (var fiftyYenCount = 0;
          fiftyYenCount <= fiftyYenSumCount;
          fiftyYenCount++) {
        final amount = (fiveHundredYenCount * 500) +
            (oneHundredYenCount * 100) +
            (fiftyYenCount * 50);
        if (desiredAmount == amount) desiredAmountMatchPattern++;
      }
    }
  }
  print(desiredAmountMatchPattern);
}
