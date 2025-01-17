import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<String> imageUrls = [
    'https://picsum.photos/250?image=237',
    'https://picsum.photos/250?image=238',
    'https://picsum.photos/250?image=239',
    'https://picsum.photos/250?image=240',
    'https://picsum.photos/250?image=241',
    'https://picsum.photos/250?image=242',
    'https://picsum.photos/250?image=243',
    'https://picsum.photos/250?image=244',
    // Add more image URLs
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Photo Gallery')),
        body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3), // Number of columns
          itemCount: imageUrls.length,
          itemBuilder: (BuildContext context, int index) {
            return Image.network(imageUrls[index]);
          },
        ),
      ),
    );
  }
}
