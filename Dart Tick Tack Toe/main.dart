import 'game.dart';
void main() {
  GameEngine gameEngine = GameEngine();
  gameEngine.showGameBoardIndex();
  gameEngine.askForUserOrAi();
  gameEngine.startGame();
}
