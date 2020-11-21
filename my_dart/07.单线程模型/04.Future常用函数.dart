void main(List<String> args) {
  Future future1 = Future(() => "future1");
  // .then()
  future1.then(print); // 相当于：future1.then((value) => print(value))

  Future future2 = Future(() => "future2");
  // .catchError()
  future2.then((value) {
    print("异步任务完成了");

    // 抛出异常
    throw "异常";
  }).catchError((onError) {
    print("捕获到 --->  $onError");
  });

  Future future3 = Future(() => "future3");

  Future future4 = Future(() => throw 'future4错误');

  // .wait()
  Future.wait([future1, future2, future3, future4]).then((value) {
    print("所有Future执行完了");
    print(value);
  }).catchError((onError) {
    print("捕获到 --->  $onError");
  }).whenComplete(() {
    print("无论是正常还是异常，都会执行到这");
  });
}
