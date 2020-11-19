class Posin {
  final String name;
  static final Map _methods = {};

  // 命名构造函数
  Posin.hahaha(this.name);

  factory Posin(String name) {
    // 工厂构造函数中无法访问this;
    // 工厂构造只能访问静态属性或者命名构造函数

    // 判断是否有某个属性
    if (_methods.containsKey(name)) {
      return _methods[name];
    }

    // 实例化
    final logger = Posin.hahaha(name);
    // 添加属性到_methods中
    _methods[name] = logger;

    return logger;
  }

  void log() {
    print(this.name);
  }
}

main(List<String> args) {
  var p1 = Posin("log");
  p1.log(); //log

  var p2 = Posin("balabala");
  p2.log(); //balabala
}
