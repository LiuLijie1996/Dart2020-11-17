void main(List<String> args) {
  Stream stream = Stream.fromIterable([1, 2, 3, 4, 5, 6]);

  stream.listen((event) {
    print(event);
  });
}
