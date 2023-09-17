import 'dart:async';

Future futureDelayed() {
  return Future.delayed(
    Duration(seconds: 2),
    () => print("Future delayed"),
  );
}

void timerClass() {
  Timer(
    Duration(seconds: 3),
    () => print("Timer class"),
  );
}

void main() {
  futureDelayed();
  timerClass();
}
