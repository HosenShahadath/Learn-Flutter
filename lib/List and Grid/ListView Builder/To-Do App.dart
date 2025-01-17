import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Task{
  final String title;
  final String subtitle;

  Task({
  required this.title,
  required this.subtitle,
  });
}

List<Task> tasks = [
  Task(
      title: "Go to Gym",
      subtitle: "Go to Gym at 6.00 Am",
  ),
  Task(
    title: "Go to Gym",
    subtitle: "Go to Gym at 6.00 Am",
  ),
  Task(
    title: "Go to Gym",
    subtitle: "Go to Gym at 6.00 Am",
  ),
];

void main(){
  runApp(MyApp6());
}

class MyApp6 extends StatelessWidget{
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
              title: Text(tasks[index].title),
              subtitle: Text(tasks[index].subtitle),
            );
            },
        ),
      ),
    );
  }
}