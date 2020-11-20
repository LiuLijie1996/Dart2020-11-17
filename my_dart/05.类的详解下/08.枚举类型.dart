// 枚举类，是一种特殊类型的类，用于表示固定数量的常量值
enum Colors {
  red,
  greey,
  blue,
}

main(List<String> args) {
  // 获取 Colors 枚举类中的所有成员，返回的是数组
  print(Colors.values);

  // 获取某个成员的索引值
  print(Colors.blue.index);
}
