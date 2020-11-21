import 'dart:async';

void main(List<String> args) {
  // 创建流
  StreamController controller = StreamController();
  // 转化成广播流
  Stream stream = controller.stream.asBroadcastStream();

  // 监听并打印内容
  stream.listen((event) {
    print("我是第一个侦听器里面的内容：$event");
  });

  // 监听并打印内容
  stream.listen((event) {
    print("我是第二个侦听器里面的内容：$event");
  });

  controller.sink..add(123)..add(456)..add(789);

  // 关闭流
  controller.close();
}
