import './uilt/methods.dart' show fn1; //只显示 fn1 函数

void main(List<String> args) {
  // 除了 fn1 可用，其他都不可用
  fn1();
}
