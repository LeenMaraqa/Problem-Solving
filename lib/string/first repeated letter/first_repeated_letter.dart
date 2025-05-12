String getFirstLetterAppearsTwice(String s) {
  if (s.isEmpty) {
    return '';
  }
  final Set<String> mappedChars = {};
  for (int i = 0; i < s.length; i++) {
    if (mappedChars.contains(s[i])) {
      return s[i];
    } else {
      mappedChars.add(s[i]);
    }
  }
  return '';
}
