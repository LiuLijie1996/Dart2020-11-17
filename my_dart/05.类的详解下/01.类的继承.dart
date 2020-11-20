class Television {
  void turnOn() {
    print("开机");
    print("动画");
  }
}

// 定义一个类继承另外一个类，当前的类就是子类
class SmartTelevision extends Television {}

main(List<String> args) {
  var t1 = Television();
  t1.turnOn();

  print("=============");

  // 该类没有写 turnOn 方法，但是继承了父类
  var t2 = SmartTelevision();
  t2.turnOn();
}
