class Television {
  void turnOn() {
    print("开机");
    print("动画");
  }
}

// 定义一个类继承另外一个类，当前的类就是子类
class SmartTelevision extends Television {
  // @override 注解，如果父类的方法不满足现在的需求可以重写该方法
  // 不加注解也不会报错，但是建议加上
  @override
  void turnOn() {
    // 调用父类的turnOn方法
    super.turnOn();

    print("链接");
    print("广告");
  }
}

main(List<String> args) {
  var t1 = Television();
  t1.turnOn();

  print("=============");

  var t2 = SmartTelevision();
  t2.turnOn();
}
