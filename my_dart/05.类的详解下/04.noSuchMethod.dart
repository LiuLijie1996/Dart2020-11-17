abstract class Info {
  String name;
  int age;

  Info(this.name, this.age) : assert(age != null, 'age属性不能等于null');
  addItem();
}

class User extends Info {
  User({String name, int age = 18}) : super(name, age);

  /*
    触发流程：
      1、先从自己的实例中寻找调用的方法，如果自己的实例中重写了父类的方法，则调用自己的，
        如果没有则调用父类的

      2、如果父类的方法并没有主体，则触发 noSuchMethod 方法
  */
  noSuchMethod(Invocation invocation) {
    print('没有找到 ${invocation.memberName} 方法');
  }
}

main(List<String> args) {
  User user = User(name: '小明');
  print(user.age);

  user.addItem();
}
