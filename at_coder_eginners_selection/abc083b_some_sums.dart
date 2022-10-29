import 'dart:io';

// 1 以上 N 以下の整数のうち、10 進法での各桁の和が A 以上 B 以下であるものの総和を求める。
void main() {
  final conditions =
      (stdin.readLineSync() ?? '').split(' ').map(int.parse).toList();
  // 調べる値の最大値
  final targetLargestInteger = conditions[0];
  // 各桁の和の下限条件
  final minCondition = conditions[1];
  // 各桁の和の上限条件
  final maxCondition = conditions[2];

  final sumList = <int>[];

  for (var targetInteger = 1;
      targetInteger <= targetLargestInteger;
      targetInteger++) {
    final targetIntegersSum = targetInteger.splitedInts.reduce((a, b) => a + b);

    if ((minCondition <= targetIntegersSum) &&
        (targetIntegersSum <= maxCondition)) sumList.add(targetInteger);
  }
  print(sumList.reduce((a, b) => a + b));
}

extension intEx on int {
  List<int> get splitedInts =>
      this.toString().split('').map((e) => int.parse(e)).toList();
}
