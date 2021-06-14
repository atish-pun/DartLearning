import 'dart:async';

void main() {
  int FromTime = 11;
  Timer.periodic(Duration(seconds: 1), (timer) {
    if (FromTime == 1) {
      timer.cancel();
    } else {
      FromTime--;
      print(FromTime);
    }
  });
}
