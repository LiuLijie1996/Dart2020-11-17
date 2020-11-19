class Posin {
  var x;
  var y;

  // Posin({num x, num y}) {
  //   this.x = x;
  //   this.y = y;
  // }

  // 语法糖
  Posin({num this.x, num this.y});
}

main(List<String> args) {
  // 如果类中没有声明构造函数，默认构造函数与类名相同，且不需要传参
  // 如果有声明与类名同名的构造函数，则没有默认构造函数
  var p1 = Posin(x: 1, y: 2);
  print(p1.x);
}
