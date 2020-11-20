import 'dart:convert';
import './uilt/myDio.dart';

void main(List<String> args) async {
  var data = await getData();
  print(json.decode(data));
}
