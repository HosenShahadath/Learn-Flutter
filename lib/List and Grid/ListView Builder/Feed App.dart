import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Post {
  final String username;
  final String userImageUrl;
  final String timestamp;
  final String contentText;
  final String contentImageUrl;

  Post({
  required this.username,
  required this.userImageUrl,
  required this.timestamp,
  required this.contentText,
  required this.contentImageUrl,
  });
}

List<Post> posts = [
  Post(
      username: "Jhon Doe",
      userImageUrl: 'https://picsum.photos/250?image=237',
      timestamp: "2h",
      contentText: 'Enjoying the beautiful sunset at the beach!',
      contentImageUrl: 'https://picsum.photos/250?image=51',
  ),
  Post(
    username: 'Mark Doe',
    userImageUrl: 'https://picsum.photos/250?image=238',
    timestamp: '1d',
    contentText: 'Just got back from a fun vacation in the mountains.',
    contentImageUrl: 'https://picsum.photos/250?image=52',
  ),
];

void main(){
  runApp(MyApp7());
}

class MyApp7 extends StatelessWidget{
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
          itemCount: posts.length,
            itemBuilder: (BuildContext context, int index){
            return Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    leading: CircleAvatar(backgroundImage: NetworkImage(posts[index].userImageUrl),),
                    title: Text(posts[index].username),
                    subtitle: Text(posts[index].timestamp),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8),
                    child: Text(posts[index].contentText),
                  ),
                  Image.network(posts[index].contentImageUrl),
                ],
              ),
            );
            },
        ),
      ),
    );
  }
}