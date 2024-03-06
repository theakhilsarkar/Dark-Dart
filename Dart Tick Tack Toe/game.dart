import 'dart:io';

class GameEngine {
  late int x, y;
  bool isGameWin = false;
  bool crossTurn = true;
  bool isAiTurn = true;
  bool isUserIsAi = true;
  int gameEndCount = 9;
  int gameTurnCount = 1;
  String winnerStatus = 'Draw';
  List<List<dynamic>> gameBoard = [
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8],
  ];

  void askForUserOrAi() {
    print("User or Ai : ");
    stdout.write("Enter 1 for User & 2 for AI : ");
    int x = int.parse(stdin.readLineSync()!);
    if (x == 1) {
      isUserIsAi = true;
    } else {
      isUserIsAi = false;
    }
  }

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
    // print(gameEndCount);
    print("\n");
  }

  void crossInput() {
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
    // print(gameEndCount);
    print("\n");
  }

  // * AI Method

  void aiInputGenerator() {
    switch (gameTurnCount) {
      case 1:
        gameBoard[0][2] = 'X';
        showGameBoard();
        break;
      case 3:
        if (gameBoard[2][0] != 'O') {
          gameBoard[2][0] = 'X';
          showGameBoard();
        } else if (gameBoard[0][0] != '0') {
          gameBoard[0][0] = 'X';
          showGameBoard();
        } else if (gameBoard[2][2] != '0') {
          gameBoard[0][0] = 'X';
          showGameBoard();
        }
        break;
      case 5:
        if (gameBoard[0][2] == gameBoard[2][0] &&
            gameBoard[2][0] == 'X' &&
            gameBoard[1][1] != 'O') {
          gameBoard[1][1] = 'X';
          showGameBoard();
        } else if (gameBoard[0][1] == gameBoard[1][1] &&
            gameBoard[1][1] == 'O' &&
            gameBoard[2][1] != 'O' &&
            gameBoard[2][1] != 'X') {
          gameBoard[2][1] = 'X';
          showGameBoard();
        } else if (gameBoard[0][0] == gameBoard[0][2] &&
            gameBoard[0][2] == 'X' &&
            gameBoard[0][1] != 'O') {
          gameBoard[0][1] = 'X';
          showGameBoard();
        } else if (gameBoard[2][2] == 'X') {
          gameBoard[1][2] = 'X';
          showGameBoard();
        } else if (gameBoard[1][1] == 'O' && gameBoard[2][2] != 'O') {
          gameBoard[2][2] = 'X';
          showGameBoard();
        } else if (gameBoard[0][2] == gameBoard[2][0] &&
            (gameBoard[0][0] != 'O' && gameBoard[0][0] != 'X')) {
          gameBoard[0][0] = 'X';
          showGameBoard();
        } else if (gameBoard[0][2] == 'X' &&
            gameBoard[2][2] != 'X' &&
            gameBoard[2][2] != '0') {
          gameBoard[2][2] = 'X';
          showGameBoard();
        }

        break;
      case 7:
        if (gameBoard[0][0] == gameBoard[2][0] &&
            (gameBoard[0][0] == 'X' &&
                (gameBoard[1][0] != 'X' && gameBoard[1][0] != 'O'))) {
          gameBoard[1][0] = 'X';
          showGameBoard();
        } else if (gameBoard[2][2] == gameBoard[1][1] &&
            gameBoard[1][1] == 'O' &&
            gameBoard[0][0] != 'O' &&
            gameBoard[0][0] != 'X') {
          gameBoard[0][0] = 'X';
          showGameBoard();
        } else if (gameBoard[0][0] == gameBoard[2][2] &&
            gameBoard[2][2] == 'O' &&
            gameBoard[1][1] != 'O' &&
            gameBoard[1][1] != 'X') {
          gameBoard[1][1] = 'X';
          showGameBoard();
        } else if (gameBoard[2][0] == gameBoard[0][2] &&
            gameBoard[2][0] == 'X' &&
            gameBoard[1][2] != 'O' &&
            gameBoard[1][2] != 'X') {
          gameBoard[1][2] = 'X';
          showGameBoard();
        } else if (gameBoard[2][0] == gameBoard[2][2] &&
            gameBoard[2][2] == 'X' &&
            gameBoard[2][1] != 'O' &&
            gameBoard[2][1] != 'X') {
          gameBoard[2][1] = 'X';
          showGameBoard();
        } else if (gameBoard[0][0] == gameBoard[2][2] &&
            gameBoard[2][2] == 'X' &&
            gameBoard[1][1] != 'O' &&
            gameBoard[1][1] != 'X') {
          gameBoard[1][1] = 'X';
          showGameBoard();
        } else if (gameBoard[0][2] == gameBoard[2][2] &&
            gameBoard[2][2] == 'X' &&
            gameBoard[1][2] != 'X' &&
            gameBoard[1][2] != 'O') {
          gameBoard[1][2] = 'X';
          showGameBoard();
        }
        break;
      case 9:
        if (gameBoard[1][0] != 'O' && gameBoard[1][0] != 'X') {
          gameBoard[1][0] = 'X';
        } else if (gameBoard[1][2] != 'O' && gameBoard[1][2] != 'X') {
          gameBoard[1][2] = 'X';
        }
    }
  }

  // ! main method for start game

  void startGame() {
    if (isUserIsAi) {
      if (crossTurn) {
        showGameBoard();
        crossInput();
        isGameWin = checkWinner();
        crossTurn = false;
        gameTurnCount++;
      } else {
        showGameBoard();
        zeroInput();
        isGameWin = checkWinner();
        crossTurn = true;
        gameTurnCount++;
      }
    } else {
      print("ai campuse --->");
      if (isAiTurn) {
        print("ai turn ---> turn count - $gameTurnCount");
        aiInputGenerator();
        isGameWin = checkWinner();
        isAiTurn = false;
        gameTurnCount++;
        gameEndCount--;
      } else {
        print("zero turn ---> turn count - $gameTurnCount");
        // showGameBoard();
        zeroInput();
        isGameWin = checkWinner();
        isAiTurn = true;
        gameTurnCount++;
      }
    }

    if (isGameWin || gameEndCount == 0) {
      showGameBoard();
      print("Game Over - $winnerStatus");
    } else {
      startGame();
    }
  }
}
