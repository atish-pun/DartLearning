void main() {
  //static method calling from class itself
  Student.getResults();

  //named constructor with marksdetails as name
  Student s = new Student(name: "Atish", roll: 2);

  Student std = new Student.classname([1, 2, 3, 4]);
  std.showclass();
}

class Student {
  //properties
  late int roll;
  late String name;
  late int classid;
  late bool isMale;
  List<int> marks = [];

  //constructor
  Student({this.roll = 1, this.name = "ram"});

  Student.classname(this.marks);

  //methods which denotes the behaviours of the class objects.
  static void getResults() {
    print("i am static method");
  }

  void showclass() {
    print("This is marks: ${this.marks}");
    print("This is name: $name and roll.no: $roll");
  }
}
