/*
  mixin的实现：
    1、使用 mixin 创建一个类，该类是当做混入使用的，那么该类中就不能声明构造函数，不能继承其他类
    2、也可以不使用 mixin 定义，使用class定义类也可以，但是里面不能声明构造函数，不能继承其他类
    3、一个类可以使用 with 引入多个混入类

  mixin的特性：
    1、不会继承mixin定义的类，但是可以调用里面的方法
    2、他是线性的，如果两个混入类出现同样的方法，后面的会覆盖前面的
    3、他是一种抽象和复用一系列操作的方式
*/

mixin Basic1 {
  String name;
  int age;

  getInfo() {
    print(this.name);
  }
}

mixin Basic2 {
  String name;
  int age;

  getInfo() {
    print(this.age);
  }
}

// 使用 with 引入 Basic1 和 Basic2类
class Student with Basic1, Basic2 {
  String name;
  int age;
  Student({this.name, this.age});
}

main(List<String> args) {
  var s1 = Student(name: "小明", age: 18);
  s1.getInfo();
}
