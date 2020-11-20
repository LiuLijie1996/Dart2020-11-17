class Vector {
  final int x, y;
  Vector(this.x, this.y);

  /*
    重写 + 运算
      1、返回的类型必须是和该类同一个类型，也就是Vector类
      2、operator  重写操作符的意思
      3、接收一个 Vector 类型的参数
  */
  Vector operator +(Vector v) {
    return Vector(this.x + v.x, this.y + v.y);
  }

  // 重写 - 运算
  Vector operator -(Vector v) {
    return Vector(this.x - v.x, this.y - v.y);
  }
}

main(List<String> args) {
  final v1 = Vector(1, 2);
  final v2 = Vector(2, 3);
  assert(v1.x == 1);
  assert(v1.y == 2);
  assert(v2.x == 2);
  assert(v2.y == 3);

  /*
    v1 + v2 相当于
      v1.x + v2.x   =   3
      v1.y + v2.y   =   5

    v1 - v2 相当于
      v1.x - v2.x   =   -1
      v1.y - v2.y   =   -1
  */
  final v3 = v1 + v2;
  final v4 = v1 - v2;
  print(v3.x); // 3
  print(v3.y); // 5
  print(v4.x); // -1
  print(v4.y); // -1
}
