import 'game.dart';

class AI_GameEngine {
  GameEngine gameEngine = GameEngine();

  void aiInputGenerator() {
    switch (gameEngine.gameTurnCount) {
      case 1:
        gameEngine.gameBoard[0][2] = 'X';
        gameEngine.showGameBoard();
        print("");
      case 3:
        if (gameEngine.gameBoard[2][0] != 'O') {
          gameEngine.gameBoard[2][0] = 'X';
          gameEngine.showGameBoard();
          print("");
        }
    }
  }
}
