//Time Complexity O(n)
//Space Complexity O(1)
int calculateMinBracketSwaps(String s) {
  int swaps = 0;
  int openLeft = 0, closeLeft = 0;
  int openRight = 0, closeRight = 0;
  int right = s.length - 1;

  for (int left = 0; left < right; left++) {
    if (s[left] == '[') {
      openLeft++;
    } else {
      closeLeft++;
    }
    if (closeLeft > openLeft) {
      while (left < right) {
        if (s[right] == '[') {
          openRight++;
        } else {
          closeRight++;
        }
        if (openRight > closeRight) {
          break;
        }
        right--;
      }
      swaps++;
      openLeft++;
      closeLeft--;
      openRight--; 
      closeRight++;
      right--;
    }
  }
  return swaps;
}

