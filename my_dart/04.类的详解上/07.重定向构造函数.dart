/*
  重定向构造函数不能有主体
*/
class Posin {
  Posin(num x) {
    print('构造函数 $x');
  }

  // 定义一个命名构造函数，并重新指向非默认构造函数
  Posin.hahaha(Map<String, num> json) : this(json["a"]);

  // 定义个命名构造函数，并重新指向另外一个命名构造函数
  Posin.balabala(List<num> list) : this.hahaha({"a": list[0]});
}

main(List<String> args) {
  var p1 = Posin.balabala([1, 2, 3]);
}
