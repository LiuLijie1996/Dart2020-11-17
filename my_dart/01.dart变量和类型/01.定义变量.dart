main(List<String> args) {
  /*---------- var -----------*/
  var a = 123;
  a = 456;
  // a = "789"; //报错，编译类型错误
  print(a);
  /*---------- END -----------*/

  /*---------- dynamic -----------*/
  dynamic b = 123;
  b = 456;
  b = '789';
  print(b);
  /*---------- END -----------*/

  /*---------- Object -----------*/
  Object c = 123;
  c = 456;
  c = '789';
  print(c);
  /*---------- END -----------*/
}
