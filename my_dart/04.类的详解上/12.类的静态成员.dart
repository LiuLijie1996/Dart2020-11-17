class Posin {
  // 静态属性
  static num count = 123;

  // 静态方法
  static myFn() {
    print('静态方法');
    // print(this);//报错，不能对实例进行操作
  }
}

main(List<String> args) {
  /*
    1、类的静态成员只能通过类名进行调用
    2、静态方法不能对实例进行操作
  */
  print(Posin.count);
  Posin.myFn();
}
