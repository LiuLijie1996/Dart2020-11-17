import 'dart:isolate';

void main(List<String> args) {
  // 创建一个新的线程执行foo函数
  Isolate.spawn(foo, "我是传给foo的数据");
}

// 这个函数会被放在了另外一个线程上执行，不会占用主线程
foo(value) {
  print(value);
}