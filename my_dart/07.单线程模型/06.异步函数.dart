import 'dart:io';

doTask() async {
  await sleep(Duration(seconds: 2));
  print("doTask!@#");
  return "doTask1";
}

test() async {
  // 此时 doTask 的执行会添加到事件队列中，但是这又是一个同步执行的风格，print会在main同步代码执行完后执行
  var r = await doTask();
  print(r);
}

void main(List<String> args) {
  // 下面三个都是同步执行，而 test 中的代码在事件队列中

  print("main 开始");

  test();

  print("main 结束");
}
