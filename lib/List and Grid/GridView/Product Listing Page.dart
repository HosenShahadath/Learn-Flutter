import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp2());
}

class MyApp2 extends StatelessWidget{
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
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
                  const Text("Product 1"),
                  const Text("Price \$100"),
                ],
              ),
            ),
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
                  const Text("Product 2"),
                  const Text("Price : \$150"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}