// 模拟错误
void errorFn() {
  throw "错误";

  // 模拟一个格式异常的错误
  // throw FormatException('格式异常');

  // 模拟内存溢出的错误
  // throw OutOfMemoryError();
}

main(List<String> args) {
  try {
    errorFn();
  } on FormatException catch (e, s) {
    print('处理格式异常错误');
    print(e);
    print(s);
  } on OutOfMemoryError catch (e, s) {
    print('处理内存溢出错误');
    print(e);
  } finally {
    print('处理完异常时，在执行');
  }
}
