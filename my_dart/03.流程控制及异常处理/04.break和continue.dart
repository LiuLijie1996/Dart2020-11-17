main(List<String> args) {
  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      // 终止整个for循环体
      break;
    }
    print(i);
  }

  for (var i = 0; i < 5; i++) {
    if (i == 3) {
      // 跳出当前循环，继续下次循环
      continue;
    }
    print(i);
  }
}
