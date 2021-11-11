import 'dart:io';

import 'anagram.dart';

void main(List<String> arguments) {
  print("Please, enter a word: ");
  final String word = stdin.readLineSync() ?? '';

  print('The anagrams for $word are:');
  print(
    Anagram.of(word)
        .toString()
        .replaceAll('[', '')
        .replaceAll(']', '')
        .replaceAll(', ', ''),
  );
}
