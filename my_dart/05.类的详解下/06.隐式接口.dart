class Person {
  String name;
  int age;
  Person(this.name, this.age);

  String greet(String who) {
    return "hello $who , 我是$name";
  }
}

/*
  如果 Student 类想要拥有 Person 类中的所有属性及方法，通过 implements 关键字进行继承 Person，
  虽然继承了，但不会实现 Person 类中的所有方法及属性，所有方法和属性都需要重写，相当于
  把 Person 作为模板进行参照，Person类拥有的 Student类也必须要有。
  一个类允许通过 implements 关键字可以实现多个接口
*/
class Student implements Person {
  @override
  int age;

  @override
  String name;

  @override
  String greet(String who) {
    return "你好，$who , 你吃饭了吗";
  }
}

main(List<String> args) {
  var p1 = Person('小明', 18);
  p1.greet('小红');

  var s1 = Student();
  s1.greet('小红');
}
