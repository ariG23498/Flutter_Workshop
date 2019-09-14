import 'dart:convert';

import 'People.dart';
import 'package:http/http.dart' as http;

Future<List<People>> getData() async {
  String url = "https://flutter-workshop.herokuapp.com/getData/";
  http.Response res = await http.get(url);
  List<dynamic> content = json.decode(res.body);
  content = content.map((json)=>People.fromJson(json)).toList();
  return content;
}
