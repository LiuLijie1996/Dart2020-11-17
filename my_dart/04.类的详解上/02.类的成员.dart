/*


*/
class Posin {
  var a;
  var b;
  var c;

  Posin(this.a, this.b, this.c);

  // 该函数接收一个类型为 Posin 的参数
  num distanceTo(Posin p) {
    return p.a + this.a;
  }
}

main(List<String> args) {
  Posin p1 = Posin(1, 2, 3);

  num distance = p1.distanceTo(Posin(6, 7, 8));
  print(distance);

  // 将p2定义成 Posin 类型
  Posin p2;
  print(p2?.a); //如果p2不是null则获取a的值

  // 获取变量的数据类型
  print(p1.runtimeType);
}
