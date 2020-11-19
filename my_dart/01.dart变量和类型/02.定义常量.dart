class Posen {
  // final关键字在类中可以初始不进行赋值,在构造函数中会进行初始化
  final a;
  Posen({this.a});

  fn() {
    print(a);
  }
}

main(List<String> args) {
  // final如果不赋值的话，需要定义在 类 里面
  final a = 123;
  const b = 123;
  // 报错，常量变量不能赋值
  // a = 1;
  // b = 1;

  var posen = new Posen(a: 1);
  print(posen.a); //1
}
