main(List<String> args) {
  var i = 0;
  while (i < 10) {
    print('打印$i');
    i++;
  }

  do {
    print('打印$i');
    i--;
  } while (i > 0);
}
