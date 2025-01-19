import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp11());
}

class MyApp11 extends StatelessWidget {
  const MyApp11({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Local Image",
      home: Scaffold(
        appBar: AppBar(
          title: Text("Local Image"),
          backgroundColor: Colors.teal,
        ),
        body: Image.asset(
          'assets/learn_flutter.jpg',
          width: 500,
          height: 500,
        ),
      ),
    );
  }
}
