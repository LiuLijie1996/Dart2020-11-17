void main(List<String> args) {
  // 假设是一个请求
  Future request = Future<String>(() {
    throw new FormatException("格式错误");
  });

  // 将事件放进事件队列中
  Stream streamRequest = Stream.fromFuture(request);

  // 监听数据流
  streamRequest.listen((event) {
    // 获取数据
    print(event);
  }, onError: (e) {
    // 捕获的异常
    print(e);
  });
}
