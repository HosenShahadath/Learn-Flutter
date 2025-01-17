import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(ReverseApp());
}

class ReverseApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.teal,
        ),
        body: ListView(
          reverse: true,
          children: [
            ListTile(
              title: Text('Go to Gym'),
              subtitle: Text('Go to Gym at 6:00 AM'),
            ),
            ListTile(
              title: Text('Go to College'),
              subtitle: Text('Go to College at 8:00 AM'),
            ),
            ListTile(
              title: Text('Go to Office'),
              subtitle: Text('Go to Office at 11:00 AM'),
            ),
          ],
        ),
      ),
    );
  }
}