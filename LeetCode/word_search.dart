

// Under Construction


import 'dart:io';

void main() {
  Solution s1 = Solution();
  List<List<String>> board = [
    ["A", "B", "C", "E"],
    ["S", "F", "C", "S"],
    ["A", "D", "E", "E"]
  ];
  String word = "SSE";
  s1.exist(board, word);
}

class Solution {
  int sl = 0;
  bool exist(List<List<String>> board, String word) {
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[i].length; j++) {
        if (word[sl] == board[i][j] && sl < word.length) {
          stdout.write(board[i][j]);
          sl++;
        } else {
          stdout.write("-");
        }
      }
      print("");
    }

    return true;
  }
}
