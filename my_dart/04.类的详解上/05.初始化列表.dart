class Posin {
  var x;
  var y;
  Posin({num x, num y})
      : this.x = x, //将实例化后类中的 x 改成传进来的x对应的值
        this.y = y //将实例化后类中的 x 改成传进来的y对应的值
  {
    print('${this.x} ${this.y}'); //5 6
  }

  Posin.fromJSON(Map<String, num> json)
      : this.x = json['x'], //将实例化后类中的 x 改成json中的x对应的值
        this.y = json["y"] //将实例化后类中的 y 改成json中的y对应的值
  {
    print('${this.x} ${this.y}');
  }

  Posin.withAssert(this.x, this.y)
      : assert(x >= 5, '第一个参数必须大于等于5'), //验证传进来的第一个参数
        assert(y >= 6, '第一个参数必须大于等于6') //验证传进来的第二个参数
  {
    print('${this.x} ${this.y}'); //5 6
  }
}

main(List<String> args) {
  var p1 = Posin(x: 5, y: 6);
  print(p1.x); //5

  var json = {"x": 1, "y": 2};
  var p2 = Posin.fromJSON(json);
  print(p2.x); //1

  var p3 = Posin.withAssert(5, 6);
  print(p3.x); //5
}
