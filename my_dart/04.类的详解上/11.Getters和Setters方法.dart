/*
  使用get和set关键子来实现读写类成员的属性
  可以使用get和set来包装实例变量，而无需改动业务代码

  使用get时需要注意，不能给方法加括号
*/
class Posin {
  num count = 0;

  set setCount(num xxx) {
    // 设置count的值
    this.count = xxx;
  }

  get getCount {
    // 返回count*2的值
    return this.count * 2;
  }
}

main(List<String> args) {
  var p1 = Posin();
  p1.setCount = 123;

  print(p1.getCount); //246;
}
