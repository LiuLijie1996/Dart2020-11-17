import 'dart:io';

void main(List<String> args) {
  print("main 开始");

  // 当前异步任务会在1秒及以上才加入到事件队列中
  Future.delayed(Duration(seconds: 1), () {
    print("延时任务，是加入事件队列的时候延时");
  });

  // 正常的异步任务，会先加入到事件队列中
  Future(() {
    print("这是正常的异步任务");
  });

  Future(() {
    // 沉睡 5s 后再执行下面的代码，并不是让异步任务 5s 后加入事件队列，这个和Future.delayed概念不一样
    sleep(Duration(seconds: 5));
    print("这是正常的异步任务，只不过这段代码沉睡了5秒");
  });

  print("main 结束");
}
