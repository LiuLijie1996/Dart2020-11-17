class Posin {
  final int x;

  // 常量构造函数不能有主体
  // 所有变量必须使用 final 定义
  const Posin({this.x});

  Posin.hahaha(num y) : this(x: y);
}

main(List<String> args) {
  var p1 = Posin.hahaha(1);
  //p1.x = 2; // 报错不能重新赋值
}
