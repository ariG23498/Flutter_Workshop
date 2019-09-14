import 'package:flutter/material.dart';

import 'package:flutter_app/pages/Home.dart';
import 'package:flutter_app/pages/Post.dart';

void main() {
  runApp(MaterialApp(
    title: "Friends",
    home: MyApp(),
  ));
}


class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}





class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Friends",style: TextStyle(fontSize: 60.0),),
            MaterialButton(
              child: Text(
                "Get Data",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.green,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Home();
                }));
              },
            ),
            MaterialButton(
              child: Text(
                "Post Data",
                style: TextStyle(color: Colors.white),
              ),
              color: Colors.red,
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Post();
                }));
              },
            )
          ],
        ),
      ),
    );
  }
}
