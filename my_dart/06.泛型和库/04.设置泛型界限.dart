class MyClass {}

// 该函数接收的类型必须是 int、double、num类型的数据，不能是其他类型
T myFunction<T extends num>(T key) {
  return key;
}

void main(List<String> args) {
  // 该方法设置的泛型必须在 num 类型以内的数据，如果传入其他数据类型的数据就会报错
  myFunction(1);
}
