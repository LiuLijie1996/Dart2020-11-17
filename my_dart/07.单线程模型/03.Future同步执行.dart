/*
  Future.sync()  Future同步执行
*/
void main(List<String> args) {
  print("main开始");

  Future.sync(() => print("Future同步执行"));

  Future(() => print("Future异步执行"));

  print("main结束");
}
