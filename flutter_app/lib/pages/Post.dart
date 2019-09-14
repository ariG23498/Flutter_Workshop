import 'package:flutter/material.dart';
import 'package:flutter_app/utils/setData.dart';

class Post extends StatefulWidget {
  @override
  _PostState createState() => _PostState();
}

class _PostState extends State<Post> {
  String name;
  int age;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TextField(
                style: TextStyle(fontSize: 26),
                decoration: InputDecoration(
                  labelText: "Name",
                ),
                onChanged: (value) {
                  name = value;
                },
              ),
              TextField(
                style: TextStyle(fontSize: 26),
                decoration: InputDecoration(
                  labelText: "Age",
                ),
                onChanged: (value) {
                  age = int.parse(value);
                },
              ),
              MaterialButton(
                child: Text(
                  "Submit Data",
                  style: TextStyle(color: Colors.white),
                ),
                color: Colors.red,
                onPressed: () {
                  print(name);
                  print("$age");
                  setData({"name": name, "age": age});
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
