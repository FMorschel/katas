class Anagram {
  static List<String> of(String s) {
    final List<String> anagrams = [];
    if (s.length > 1) {
      for (int i = 0; i < s.length; i++) {
        final droppedChar = s.substring(i, i + 1);
        final anagramsOfRest = of(_dropCharacter(s, i));
        for (final anagramOfRest in anagramsOfRest) {
          anagrams.add(droppedChar + anagramOfRest);
        }
      }
    } else {
      anagrams.add(s);
    }
    return anagrams;
  }

  static String _dropCharacter(String s, int index) {
    return s.substring(0, index) + s.substring(index + 1);
  }
}
