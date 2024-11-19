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

// find name, consist name not only match word

class Solution {
  bool exist(List<List<String>> board, String word) {
    int sl = 0;
    for (int i = 0; i < board.length; i++) {
      for (int j = 0; j < board[i].length; j++) {
        if (sl == word.length) break;
        if (word[sl] == board[i][j] && sl < word.length) {
          stdout.write(board[i][j]);
          if (sl < word.length - 1) {
            // 2<2
            sl++;
          }
        } else {
          stdout.write("-");
        }
      }
      print("");
    }
    return true;
  }
}



