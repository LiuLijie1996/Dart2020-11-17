/*
  命名构造函数是为构造函数添加一个标识符
  使用命名构造函数可以在一个类中定义多个构造函数
  父类的命名构造函数子类也不会继承
*/
class Posin {
  var x;
  var y;

  // 语法糖
  Posin({num this.x, num this.y});

  // 命名构造函数
  Posin.origin({num this.x, num this.y});
}

main(List<String> args) {
  var p1 = Posin(x: 1, y: 2);
  print(p1.runtimeType);

  var p2 = Posin.origin(x: 6, y: 6);
  print(p1.runtimeType == p2.runtimeType); //true
}
