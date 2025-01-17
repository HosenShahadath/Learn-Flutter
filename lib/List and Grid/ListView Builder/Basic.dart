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
        body: ListView.builder(
          itemCount: 20,
            itemBuilder: (BuildContext context, int index){
            return ListTile(
             title: Text("Item $index"), 
             );
            }
        ),
      ),
    );
  }
}