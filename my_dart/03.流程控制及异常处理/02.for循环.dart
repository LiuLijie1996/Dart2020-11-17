main(List<String> args) {
  var msg = StringBuffer('dart is fun');

  for (var i = 0; i < 5; i++) {
    msg.write('!');
  }

  print(msg); //dart is fun!!!!!
}
