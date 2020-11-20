// 该类接收了数据类型为 T，list成员的数据类型也是 T，addList方法接收的参数类型也是 T
class Person<T> {
  List list = <T>[];

  // 规定传入的第一个参数类型必须是 T 类型
  void addList(T v) {
    this.list.add(v);
  }
}

void main(List<String> args) {
  // 实例化时，确定数据类型，T对应的是String类型
  var p1 = Person<String>();

  // 此时传入的数据，必须按照类中的数据类型规定进行传参
  p1.addList("小明");
}
