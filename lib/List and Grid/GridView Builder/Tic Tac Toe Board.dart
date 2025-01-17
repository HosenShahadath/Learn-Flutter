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
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            itemCount: 9,
            itemBuilder: (BuildContext context, int index){
              return Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                ),
                child: Center(
                  child: index % 2 == 0
                      ? const Text('X')
                      : const Text('O'),
                ),
              );
            },
        ),
      ),
    );
  }
}