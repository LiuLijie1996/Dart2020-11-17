void main(List<String> args) {
  Future f1 = Future(() => "异步任务1");
  Future f2 = Future(() => "异步任务2");
  Future f3 = Future(() => "异步任务3");
  Future f4 = Future(() => "异步任务4");
  Future f5 = Future(() => "异步任务5");

  // 第一种处理方式
  Stream stream = Stream.fromFutures([f1, f2, f3, f4, f5]);
  // stream.listen(print);

  // 第二种处理方式
  awaitDemo() async {
    await for (var f in stream) {
      print(f);
    }
  }

  awaitDemo();
}
