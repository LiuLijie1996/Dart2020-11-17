class Posin {
  Posin(num x) {
    print('构造函数 $x');
  }

  // 定义一个命名构造函数，并重新指向非默认构造函数
  Posin.hahaha(json) : this(json["a"]);
}
