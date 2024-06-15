void main() {
  Solution s1 = Solution();
  print(s1.lengthOfLastWord("   fly me   to   the moon  "));
}

class Solution {
  int lengthOfLastWord(String s) {
    int n = s.length;
    int count = 0;
    bool start = false;
    // "Hello World"

    for (int i = n - 1; i >= 0; i--) {
      if (s[i] != ' ') {
        count++;
        start = true;
      } else if (start && s[i] == ' ') {
        break;
      }
    }

    return count;
  }
}
