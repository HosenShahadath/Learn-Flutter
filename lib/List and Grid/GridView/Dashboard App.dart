import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp3());
}

class MyApp3 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.teal,
        ),
        body: GridView.count(
            crossAxisCount: 2,
          children: [
            MaterialButton(
              color: Colors.green,
              onPressed: (){},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 1"),
                ],
              ),
            ),
            MaterialButton(
              color: Colors.blueGrey,
              onPressed: (){},
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.category),
                  Text("Category 2"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}