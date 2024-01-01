import 'dart:async';

DateTime dateTime = new DateTime.now();

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

void timerPerioidic() {
  Timer.periodic(
    Duration(seconds: 1),
    (timer) {
      if (dateTime != DateTime.now()) {
        print(
            "${DateTime.now().hour} : ${DateTime.now().minute} : ${DateTime.now().second}");
      }
    },
  );
}

void main() {
  futureDelayed();
  timerClass();
  timerPerioidic();
}
