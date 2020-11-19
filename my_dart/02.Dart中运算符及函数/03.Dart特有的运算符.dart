class A {
  var b = 1;
}

main(List<String> args) {
  // 如果对象为null则返回null，否则返回成员
  var map;
  print(map?.a);

  // 除后取整
  print(15 ~/ 6); //2

  var a = A();
  print((a as A).b); //判断是否是 A 的实例，如果是则获取 b 的值

  print(a is A); //判断是否具备指定的类型，返回布尔值
  print(a is! A); //判断是否不具备指定的类型，返回布尔值

  print(a ?? A); // 判断是否是 A 的实例，不能调用类中的成员

  var b;
  print(b ??= 10); //只有需要赋值的变量属于null时，才进行赋值
  print(b); //10

  var list = [1, 2, 3, 4, 5, 6];
  list..add(7)..add(8); //级联运算符，可以用来链式操作
  print(list); //[1, 2, 3, 4, 5, 6, 7, 8]
}
