import 'dart:convert';
import './uilt/myDio.dart' as xxx;

void main(List<String> args) async {
  var data = await xxx.getData();
  print(json.decode(data));
}
