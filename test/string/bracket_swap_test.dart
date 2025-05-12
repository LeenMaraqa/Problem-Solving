import 'package:test/test.dart';
import '../../lib/string/bracket swap/bracket_swap.dart';  

void main() {
  group('Bracket Swap Tests', () {
    test('Test Case 1', () {
      expect(calculateMinBracketSwaps('[]'), equals(0));  
    });

    test('Test Case 2', () {
      expect(calculateMinBracketSwaps('][]['), equals(1)); 
    });

    test('Test Case 3', () {
      expect(calculateMinBracketSwaps(']]][[['), equals(2));  
    });

    test('Test Case 4', () {
      expect(calculateMinBracketSwaps('[]][][]['), equals(1)); 
    });

    test('Test Case 5', () {
      expect(calculateMinBracketSwaps(']]]][[[['), equals(2));  
    });

    test('Test Case 6', () {
      expect(calculateMinBracketSwaps('][][]['), equals(1));  
    });

    test('Test Case 7', () {
      expect(calculateMinBracketSwaps(']][['), equals(1)); 
    });

    test('Test Case 8', () {
      expect(calculateMinBracketSwaps('[]]]][[[[]'), equals(2));  
    });
  });
}
