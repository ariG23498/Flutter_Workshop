import 'dart:convert';
import 'package:http/http.dart' as http;

void setData(Map<String, dynamic> data) async {
  String url = "https://flutter-workshop.herokuapp.com/setData/";
  String postBody = json.encode(data);
  http
      .post(
    url,
    headers: {
      "Content-Type": "application/json",
    },
    body: postBody,
    encoding: Encoding.getByName('utf-8'),
  )
      .then((onValue) {
    print(onValue.statusCode);
  });
}
