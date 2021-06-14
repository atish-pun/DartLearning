void main() {
  /*String repeat =
      "lal kumar pun" * 5; //used on testing purpose for many dummy datas
  print(repeat); */ // This is string multiplications
  // store();
  SpreadOperator();
}
//--------------------Use of future keywords with async and await keywords-----------------------------------

/* void store() async {
  //async and await used during using of future only
  var data = await downloads();
  print(data);
}

Future<String> downloads() {
  var result = Future.delayed(Duration(seconds: 3), () {
    return "hello future code works dear lal for async and await";
  });
  return result; 
} */

/* -----------------------Use of future keywords with then keywords-----------------------------------

// using then keyword have feautures of error in dart languages than that of await and async
void store() {
  // Future<String> data = downloads(); neeeds in future
  var data = downloads(); // needs immediatley
  data.then((response) => print(response), onError: (Error) {
    print(Error);
  });
}

Future<String> downloads() {
  Future<String> result = Future.delayed(Duration(seconds: 3), () {
    return Future.error("hello error for then keywords");
  });
  return result;
}*/

//-------------------SPREAD OPERATOR-------------------------------------------------------------------

void SpreadOperator() {
  var marks = 30;
  //-----------------IF ELSE shortcut
  // bool ifElseShorcut = true;
  // ifElseShorcut ? "its true condition" : "else false condition";
  List<String> std = [
    "lal",
    if (marks > 40) ...["not match"],
    if (marks > 20) ...["match"]
  ];
  print(std);
}
