// baap -> dadar ,property
// inherit
// multiple inheritance doesn't support

class Human{
  void eating(){
    print("eating");
  }
  void moving(){
    print("moving");
  }
  void talking(){
    print("talking");
  }
  void breathing(){
    print("breathing");
  }
  // private method
  void _income(){
    print("10000k");
  }
}

class Teacher extends Human{
  void teaching(){
    print("teaching");
  }
}

class Student extends Human{
  void studying(){
    print("studying");
  }
}

class Programmer extends Student{
  void programming(){
    print("programming");
  }
}

// class childClass/BaseClass extents parentClass/SuperClass
class SpecialOne extends Human{
  @override
  void eating(){
    print("eating too fast");
  }
  @override
  void moving(){
    print("moving too fast");
  }
}

void main(){
  Programmer hasan = Programmer();
  hasan.breathing();
  hasan.eating();
  hasan.studying();
  hasan.programming();
}