import 'uilt/methods.dart' deferred as xxx;

void main(List<String> args) async {
  // 先调用 loadLibrary 后才能调用里面的方法
  await xxx.loadLibrary();
  xxx.fn1();
}
