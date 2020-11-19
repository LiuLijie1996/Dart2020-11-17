void printElement(element) {
  print(element);
}

main(List<String> args) {
  var list = [123, 34, 235, 435, 36, 45657, 423, 154, 9678];

  // 可以将函数作为参数传递给另外一个函数
  list.forEach(printElement);

  // 可以为变量分配一个函数
  var fn = () {
    print("object");
  };
}
