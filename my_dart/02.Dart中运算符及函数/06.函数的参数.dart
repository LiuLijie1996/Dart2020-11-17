main(List<String> args) {
  // 可选命名参数
  isFunction1({String name = '小兰', int age = 18}) {
    print('$name, $age');
  }

  isFunction1(name: '小明');
  isFunction1(age: 1);
  isFunction1(age: 2, name: '小美');

  // 可选位置参数
  isFunction2(String name, int age, [String sex = '男']) {
    print('$name, $age, $sex');
  }

  isFunction2('小明', 18);
  isFunction2('小美', 18, '女');
}
