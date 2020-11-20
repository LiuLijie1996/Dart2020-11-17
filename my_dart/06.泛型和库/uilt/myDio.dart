import 'dart:convert';
import 'dart:io';

getData() async {
  var http = HttpClient();
  var url = Uri.http("localhost:3000", "/index/test");
  var request = await http.getUrl(url); //请求数据
  var response = await request.close(); //关闭通道

  return response.transform(utf8.decoder).join();
}
