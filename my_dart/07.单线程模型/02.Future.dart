void main(List<String> args) {
  print('main开始');

  Future<num> future1 = Future(() {
    print('事件队列1');
    return 123456;
  });

  // 在Future中可以规定返回值是一个 Future 对象
  Future<Future> future2 = Future(() {
    print('事件队列2');

    // 返回一个 Future 对象
    return future1;
  });

  // 获取 future2 成功时返回的 Future 对象
  future2.then((future) {
    // 打印 Future 对象成功时的返回值
    future.then((value) => print(value));
  });

  print('main结束');
}
