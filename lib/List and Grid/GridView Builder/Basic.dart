import 'package:flutter/material.dart';

void main() {
  runApp(MyApp8());
}

class MyApp8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('GridViewBuilder In Flutter')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2), // Number of columns
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: Center(
                child: Text('Item $index'),
              ),
            );
          },
        ),
      ),
    );
  }
}
