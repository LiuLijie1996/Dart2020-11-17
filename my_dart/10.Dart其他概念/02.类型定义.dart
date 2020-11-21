/*
  在Dart中，函数是对象，就像字符串和数字是对象一样，typedef 可以为函数提供一个类型别名
  当函数类型被分配给变量时，typedef 保留类型信息。
*/

// 定义一个函数类型,该函数接受两个类型是 Object 的参数，返回的是一个 int 类型的数据
typedef MyFunc1 = int Function(Object a, Object b);

// 定义一个函数类型，接受的数据类型为泛型
typedef MyFunc2<T> = T Function(T a, T b);

void main(List<String> args) {
  MyFunc1 fn1 = (a, b) {
    return 1;
  };
  // 数字类型也是 Object 的类型
  fn1(1, 2);


  // 传入的参数是int类型，接受的返回值也是 int 类型
  MyFunc2<int> fn2 = (a, b) {
    return a;
  };
  fn2(1, 2);
}