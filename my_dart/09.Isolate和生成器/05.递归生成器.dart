import 'dart:async';

// 递归同步生成器
Iterable<int> naturalsTo([int n = 10]) sync* {
  if (n > 0) {
    yield n;
    yield* naturalsTo(n - 1);
  }
}

// 递归异步生成器
Stream<int> naturalsTo2([int n = 10]) async* {
  if (n > 0) {
    yield n;
    yield* naturalsTo2(n - 1);
  }
}

void main(List<String> args) {
  var a = naturalsTo().toList();
  print(a); //[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]

  var b = naturalsTo2().toList();
  print(b); //[10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
}