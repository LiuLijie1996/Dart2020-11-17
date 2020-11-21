void main(List<String> args) {
  // 假设是一个请求
  Future request1 = Future<String>(() {
    throw new FormatException("格式错误");
  });

  // 假设是一个请求
  Future request2 = Future<String>(() {
    return "请求成功";
  });

  // 将事件放进事件队列中
  Stream streamRequest = Stream.fromFutures([request1, request2]);

  // 监听数据流
  streamRequest.listen((event) {
    // 获取数据
    print(event);
  }, onError: (e) {
    // 捕获的异常
    print(e);
  });
}
