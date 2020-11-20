import 'uilt/methods.dart' hide fn1; //隐藏 fn1 函数

void main(List<String> args) {
  // 除了 fn1 不可用，其他都可用
  fn2();
  fn3();
  fn4();
  fn5();
}
