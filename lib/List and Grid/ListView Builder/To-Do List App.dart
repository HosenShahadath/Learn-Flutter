import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp5());
}

class MyApp5 extends StatelessWidget{
  final List<String> tasks =[
    "Go to Gym",
    "Go to College",
    "Go to Office",
    "Go to Rest",
    "Go to Sleep",
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.teal,
        ),
        body: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (BuildContext context, int index){
              return ListTile(
                title: Text(tasks[index]),
              );
            },
        ),
      ),
    );
  }
}