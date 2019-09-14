import 'package:flutter/material.dart';
import 'package:flutter_app/utils/People.dart';
import 'package:flutter_app/utils/getData.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<People> friends = [];

  @override
  void initState() { 
    super.initState();
    getData().then((value){
      setState(() {
        friends = value;
      });
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Friends"),
      ),
      body: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text("${friends[index].name}"),
            leading: CircleAvatar(
              child: Text("${friends[index].age}"),
            ),
          );
        },
        itemCount: friends.length,
        separatorBuilder: (BuildContext context, int index) {
          return Divider();
        },
      ),
    );
  }
}
