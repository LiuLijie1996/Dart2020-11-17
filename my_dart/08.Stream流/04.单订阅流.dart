import 'dart:async';

void main(List<String> args) {
  // 创建流
  StreamController controller = StreamController();

  // 监听流数据
  controller.stream.listen((value) {
    print(value);
  });

  // controller是一个空的,可以添加任意类型的数据，添加后，就会触发监听的 listen 回调函数
  controller.sink.add("hello world");
  controller.sink.add(123);
  controller.sink..add("a")..add("b")..add("c");

  // 关闭流
  controller.close();
}
