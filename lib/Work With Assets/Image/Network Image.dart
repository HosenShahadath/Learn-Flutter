import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp4());
}

class MyApp4 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.teal,
        ),
        body: Image(
            image: NetworkImage('https://picsum.photos/250?image=9'),
          width: 150,
          height: 150,
        ),
      ),
    );
  }
}