import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Product{
  final String title;
  final String subtitle;
  final String imageUrl;

  Product({
    required this.title,
    required this.subtitle,
    required this.imageUrl,
  });
}

List<Product> products = [

  Product(
    title: 'Product 1',
    subtitle: 'Subtitle 1',
    imageUrl: 'https://picsum.photos/250?image=237',
  ),
  Product(
    title: 'Product 2',
    subtitle: 'Subtitle 2',
    imageUrl: 'https://picsum.photos/250?image=238',
  ),
  Product(
    title: 'Product 3',
    subtitle: 'Subtitle 3',
    imageUrl: 'https://picsum.photos/250?image=239',
  ),

];

void main(){
  runApp(MyApp9());
}

class MyApp9 extends StatelessWidget{
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
          itemCount: products.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (BuildContext context, int index){
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(products[index].imageUrl),
                  Text(products[index].title),
                  Text(products[index].subtitle),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}