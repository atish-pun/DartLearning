import 'dart:math';

void main() {
//   DateTime todaydt = DateTime.now();
//   var milisec = todaydt.millisecond;

//   var randomFace = Dice();
//   print("You get: ");
//   print('${randomFace.diceFace(a: milisec)}');
// }

// class Dice {
//   late int a;
//   int diceFace({a}) {
//     return (a % 6 + 1);
//   }
var list = [1,2,3];
var ran = Random();
print(list[ran.nextInt(list.length)]);

}

