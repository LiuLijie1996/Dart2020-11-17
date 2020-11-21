class Person {
  String name;
  // 实现类里面的 call 方法
  call(String a, String b, String c) => "$a $b $c";
}

void main(List<String> args) {
  var p1 = Person();
  var str1 = p1("你", "好", "啊");
  var str2 = p1.call("你", "好", "啊");

  // 效果相同
  print(str1);
  print(str2);
}