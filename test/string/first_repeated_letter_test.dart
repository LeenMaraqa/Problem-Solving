import 'package:test/test.dart';
import '../../lib/string/first repeated letter/first_repeated_letter.dart';
void main() {
  group('first_letter_to_appear_twice tests', () {
    test('Should return first char appears twice', () {
      expect(getFirstLetterAppearsTwice('abcdd'), equals('d'));
    });

    test('Should return nothing for an empty string', () {
      expect(getFirstLetterAppearsTwice(''), equals(''));
    });

    test('Should return nothing for the case that has no duplicate chars', () {
      expect(getFirstLetterAppearsTwice('abcd'), equals(''));
    });
  });
}