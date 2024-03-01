import 'dart:io';

class GameEngine {
  late int x, y;
  bool isGameWin = false;
  bool crossTurn = true;
  int gameEndCount = 9;
  String winnerStatus = 'Draw';
  List<List<dynamic>> gameBoard = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
  ];

  bool checkWinner() {
    // row - 1
    if (gameBoard[0][0] == gameBoard[0][1] &&
        gameBoard[0][1] == gameBoard[0][2]) {
      if (gameBoard[0][0] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // row - 2
    else if (gameBoard[1][0] == gameBoard[1][1] &&
        gameBoard[1][1] == gameBoard[1][2]) {
      if (gameBoard[1][0] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // row - 3
    else if (gameBoard[2][0] == gameBoard[2][1] &&
        gameBoard[2][1] == gameBoard[2][2]) {
      if (gameBoard[2][0] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // diagonal
    else if (gameBoard[0][0] == gameBoard[1][1] &&
        gameBoard[1][1] == gameBoard[2][2]) {
      if (gameBoard[0][0] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // anit diagonal
    else if (gameBoard[0][2] == gameBoard[1][1] &&
        gameBoard[1][1] == gameBoard[2][0]) {
      if (gameBoard[0][2] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // column - 1
    else if (gameBoard[0][0] == gameBoard[1][0] &&
        gameBoard[1][0] == gameBoard[2][0]) {
      if (gameBoard[0][0] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // column - 2
    else if (gameBoard[0][1] == gameBoard[1][1] &&
        gameBoard[1][1] == gameBoard[2][1]) {
      if (gameBoard[0][1] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    }
    // column - 3
    else if (gameBoard[0][2] == gameBoard[1][2] &&
        gameBoard[1][2] == gameBoard[2][2]) {
      if (gameBoard[0][2] == 'O') {
        winnerStatus = 'O is Winner';
      } else {
        winnerStatus = 'X is Winner';
      }
      return true;
    } else {
      return false;
    }
  }

  void showGameBoardIndex() {
    print('\n[0,0] [0,1] [0,2]');
    print('[1,0] [1,1] [1,2]');
    print('[2,0] [2,1] [2,2]');
  }

  void showGameBoard() {
    for (int i = 0; i < 3; i++) {
      for (int j = 0; j < 3; j++) {
        if (gameBoard[i][j] == 'O' || gameBoard[i][j] == 'X') {
          stdout.write("${gameBoard[i][j]} ");
        } else {
          stdout.write("  ");
        }
      }
      print(" ");
    }
  }

  void zeroInput() {
    showGameBoard();
    print("\n");
    print('O - Turn -:>');
    print('Enter position - (x,y) : ');
    stdout.write('x : ');
    x = int.parse(stdin.readLineSync()!);
    stdout.write('y : ');
    y = int.parse(stdin.readLineSync()!);
    if (gameBoard[x][y] == 'X' || gameBoard[x][y] == 'O') {
      print('\n------Repeat postion entry not allowed !------\n');
      zeroInput();
    }
    gameBoard[x][y] = 'O';
    gameEndCount--;
    print(gameEndCount);
    print("\n");
  }

  void crossInput() {
    showGameBoard();
    print("\n");
    print('X - Turn -:>');
    print('Enter position - (x,y) : ');
    stdout.write('x : ');
    x = int.parse(stdin.readLineSync()!);
    stdout.write('y : ');
    y = int.parse(stdin.readLineSync()!);
    if (gameBoard[x][y] == 'X' || gameBoard[x][y] == 'O') {
      print('\n------Repeat postion entry not allowed !------\n');
      crossInput();
    }
    gameBoard[x][y] = 'X';
    gameEndCount--;
    print(gameEndCount);
    print("\n");
  }

  void startGame() {
    if (crossTurn) {
      crossInput();
      isGameWin = checkWinner();
      crossTurn = false;
    } else {
      zeroInput();
      isGameWin = checkWinner();
      crossTurn = true;
    }

    if (isGameWin || gameEndCount == 0) {
      showGameBoard();
      print("Game Over - $winnerStatus");
    } else {
      startGame();
    }
  }
}
