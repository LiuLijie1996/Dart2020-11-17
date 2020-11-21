import 'dart:isolate';

start() async {
  // 创建一个接受管道
  ReceivePort receivePort = ReceivePort();
  // 创建并发 Isolate 并传入发送管道
  Isolate isolate = await Isolate.spawn(getMsg, receivePort.sendPort);

  // 监听管道消息
  receivePort.listen((msg) {
    print("MSG：$msg");
    receivePort.close(); //关闭管道
    isolate?.kill(priority: Isolate.immediate);//杀掉并发 Isolate
    isolate = null;
  });
}

// 并向 Isolate 往管道发送一个字符串
getMsg(SendPort sendPort) {
  var a = 10;
  var b = 20;
  sendPort.send(a + b);
}


void main(List<String> args) {
  start();
}