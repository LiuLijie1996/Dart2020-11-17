import 'dart:async';

void main(List<String> args) {
  StreamController<int> controller = StreamController();

  // map的使用，类似与数组的map方法，修改遍历的数据，返回新的数据，在listen中得到
  // controller.stream.map((data) {
  //   return data += 1;
  // }).listen((event) {
  //   print(event);
  // });

  // 使用 where 对流的数据进行筛选
  // controller.stream.where((data) {
  //   return data >= 400;
  // }).listen((event) {
  //   print(event);
  // });

  // 使用 expand 对现有的流进行扩展,返回的数据必须是可以迭代的
  // controller.stream.expand((data) {
  //   return [data, data + 1];
  // }).listen((event) {
  //   print(event);
  // });

  // 可以通过 take 方法控制Stream中的元素数量，传入的是2，那么只有两个
  // controller.stream.take(2).listen((event) {
  //   print(event);
  // });

  // 需要处理复杂的Stream时，我们可以使用 transform 方法，数据会先经过transform的处理
  StreamTransformer transformer = StreamTransformer<int, String>.fromHandlers(
    handleData: (data, sink) {
      data < 400 ? sink.add('条件成立') : sink.add('条件不成立');
    },
  );

  controller.stream
      .transform(transformer)
      .listen(print, onError: (e) => print(e));

  // 向单向流中添加数据
  controller.sink..add(123)..add(456)..add(789);

  // 关闭
  controller.close();
}
