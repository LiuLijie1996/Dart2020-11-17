// 同步生成器，生成可迭代的对象
Iterable<int> naturalsTo([int n = 5]) sync* {
  int i = 0;
  while(i<n){
    yield i++;
  }
}

void main(List<String> args) {
  var a = naturalsTo().toList();
  print(a);//[0, 1, 2, 3, 4]
}