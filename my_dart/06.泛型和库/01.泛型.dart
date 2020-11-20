/*
  什么是泛型：广泛的类型
    1、常用于需要要求类型安全的情况。
    2、使用泛型时，类型一旦确定，那么该数据的类型在整个代码的执行过程中不可进行改变。
    3、适当的指定泛型可以更好的帮助代码生成以及减少代码重复。

  通常使用一个字母来代表类型参数，比如：E、T、S、K、V 等等
*/

// 该方法接收的参数的类型是 T，返回的数据类型也是 T
T printFunction<T>(T v) {
  return v;
}

main(List<String> args) {
  // 执行方法时确定了数据类型为 String，那么传入的参数的类型也得是 String
  var str = printFunction<String>('小明');
  print(str);

  // 执行方法时确定了数据类型为 num，那么传入的参数的类型也得是 num
  var count = printFunction<num>(1);
  print(count);
}
