/* 
  使用 abstract 修饰符定义的类为抽象类，抽象类不能实例化。抽象类通常有抽象方法，
  实例方法、get和set方法可以是抽象方法，之定义一个接口具体实现留给其他类，抽象方法只
  能存在与抽象类中，抽象方法是没有方法体的
*/
abstract class Info {
  getName(); //抽象方法
}

class User extends Info {
  final name;
  final age;
  User({this.name, this.age});

  @override
  getName() {
    print(this.name);
  }
}

main(List<String> args) {
  User user = User(name: '小明');
  user.getName();
}
