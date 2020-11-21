// 自定义注解,一般会写在单独的一个注解库中，这里为了演示，写在同一个文件中
class Todo{
  final String who;
  final String what;

  // 自定义元数据注解，必须是常量构造函数
  const Todo(this.who, this.what);
}


class A{
  @Todo("小明", "开机")
  void turnOn(){
    // code...
  }
}

void main(List<String> args) {
  var a = A();
  a.turnOn();
}