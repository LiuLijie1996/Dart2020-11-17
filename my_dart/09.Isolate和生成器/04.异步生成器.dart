import 'dart:async';

// 异步生成器
Stream<int> naturalsTo([int n = 10]) async* {
  int k = 0;
  while (k < n) yield k++;
}

void main(List<String> args) {
  var a = naturalsTo();
  a.listen((event) {
    print(event);
  });
}