import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'onlineservice.dart';
import 'person.dart';

void main(){
  runApp(OnlineJson());
}

class OnlineJson extends StatelessWidget {
  const OnlineJson({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Json",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Online Json"),
          backgroundColor: Colors.teal,
        ),
        body: FutureBuilder(
            future: OnlineService().loadPerson(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                Person person = snapshot.data as Person;
                return Center(
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 4.0,
                      child: Padding(
                          padding: const EdgeInsets.all(16.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundImage:  NetworkImage(person.image),
                              radius: 50,
                            ),
                            const SizedBox(height: 10,),
                            Text(
                              person.name,
                              style: const TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                              const SizedBox(height: 5,),
                              Text(
                                person.address,
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[600],
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Age: ${person.age}',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.grey[800],
                                ),
                              ),
                              const SizedBox(height: 10),
                              Text(
                                person.description,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }else{
                return const Center(child: CircularProgressIndicator());
              }
            }
        ),
      ),
    );
  }
}
