/*
  类的定义使用class关键字
  如果未定义构造函数，会默认一个空的构造函数
  类的首字母必须大写
  使用new关键字和构造函数来创建对象
  dart2.x+可以省略new关键字
*/
class Posin {
  var a;
  var b;
  var c;
}

main(List<String> args) {
  Posin p1 = Posin();

  p1.a = 1;
  p1.b = 2;
  p1.c = 3;

  print("${p1.a} ${p1.b} ${p1.c}");
}
