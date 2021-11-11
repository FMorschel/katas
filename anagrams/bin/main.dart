import 'dart:io';

void main(List<String> arguments) {
  print("Please, enter a word: ");
  final word = stdin.readLineSync();
  print(word);
}
