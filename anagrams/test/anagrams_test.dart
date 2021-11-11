import 'dart:math';

import 'package:test/test.dart';
import '../bin/anagram.dart';

void main() {
  test('Empty syting for empty string', () {
    expect(Anagram.of(''), ['']);
  });
  group('Factorial return for number of characters', () {
    test('One character', () {
      expect(Anagram.of('a'), ['a']);
    });
    test('Two characters', () {
      expect(Anagram.of('ab'), ['ab', 'ba']);
      expect(Anagram.of('yz'), ['yz', 'zy']);
    });
    test('Three characters', () {
      expect(Anagram.of('abc'), ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']);
    });

    test('N characters', () {
      final n = Random().nextInt(10);
      expect(Anagram.of(amountOfCharacters(n)).length, n.factorial);
    });
  });
}

extension on int {
  int get factorial {
    if (this.isNegative) {
      return -1;
    } else if (this == 0) {
      return 1;
    } else {
      return (this - 1).factorial * this;
    }
  }
}

String amountOfCharacters(int n) {
  String string = '';
  for (int i = 0; i < n; i++) {
    string += fromInt(i);
  }
  return string;
}

String fromInt(int n) {
  switch (n) {
    case 1:
      return 'a';
    case 2:
      return 'b';
    case 3:
      return 'c';
    case 4:
      return 'd';
    case 5:
      return 'e';
    case 6:
      return 'f';
    case 7:
      return 'g';
    case 8:
      return 'h';
    case 9:
      return 'i';
    case 10:
      return 'j';
    case 11:
      return 'k';
    case 12:
      return 'l';
    case 13:
      return 'm';
    case 14:
      return 'n';
    case 15:
      return 'o';
    case 16:
      return 'p';
    case 17:
      return 'q';
    case 18:
      return 'r';
    case 19:
      return 's';
    case 20:
      return 't';
    case 21:
      return 'u';
    case 22:
      return 'v';
    case 23:
      return 'w';
    case 24:
      return 'x';
    case 25:
      return 'y';
    case 26:
    default:
      return 'z';
  }
}
