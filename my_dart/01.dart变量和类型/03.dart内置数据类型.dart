main(List<String> args) {
  /*----------数字类型-------------*/
  // 数字类型
  num a = 1.1;
  a = 1;

  // 整型
  int b = 1;
  // b = 1.1;//报错，不能将浮点型的数据赋值给整形的变量

  // 浮点型
  double c = 1.1;
  c = 1; //老版本dart中是不能赋值整型的，现在可以了
  print(c); //1.0
  /*----------END-------------*/

  /*----------布尔类型-------------*/
  bool d = true;
  /*----------END-------------*/

  /*----------字符串类型-------------*/
  String e = '哈哈哈';
  /*----------END-------------*/

  /*----------List类型-------------*/
  var f = List();
  f.add(1); //添加一个数字类型的数据
  f.add('value'); //添加一个字符串类型的数据
  f.add({'name': '小明'}); //添加一个Map类型的数据

  // 此时g的成员必须是int类型
  var g = [1, 2, 3, 4, 5, 6];
  // g.add('value'); //报错，不能将参数类型“String”分配给参数类型“int”
  /*----------END-------------*/

  /*----------Map类型-------------*/
  Map h = Map();
  h['name'] = '小明';
  /*----------END-------------*/
}
