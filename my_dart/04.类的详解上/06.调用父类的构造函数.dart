class Posin {
  var data;
  Posin(Map this.data) {
    print('Posin的构造函数');
  }

  Posin.origin(String name) {
    print("Posin的origin命名构造函数被调用");
  }

  Posin.master({num x}) : assert(x > 1, "x必须大于1") {
    print('初始化列表');
  }
}

/*
  子类调用父类的构造函数时，会先触发父类的构造函数
*/
class Student extends Posin {
  // 调用父类的构造函数
  Student(Map data) : super(data) {
    print('调用父类的构造函数');
  }

  // 调用父类的命名构造函数
  Student.hahaha(String name) : super.origin(name) {
    print('调用父类的命名构造函数');
  }

  // 调用父类的带初始化列表的命名构造函数
  Student.balabala(num count) : super.master(x: count) {
    print('调用父类的带初始化列表的命名构造函数');
  }
}

main(List<String> args) {
  var stu1 = Student({"name": "小明"});

  var stu2 = Student.hahaha("小明");

  var stu3 = Student.balabala(2);
}
