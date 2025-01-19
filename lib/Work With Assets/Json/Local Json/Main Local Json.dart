import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'localservice.dart';
import 'person.dart';

void main(){
  runApp(Local());
}

class Local extends StatelessWidget {
  const Local({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Json Data",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Local Json"),
          backgroundColor: Colors.teal,
        ),
        body: FutureBuilder(
            future: LocalService().loadPerson(),
            builder: (context, snapshot){
              if(snapshot.hasData){
                Person person = snapshot.data as Person;
                return Center(
                  child: Padding(
                      padding: const EdgeInsets.all(16),
                    child: Card(
                      elevation: 4,
                      child: Padding(
                          padding: const EdgeInsets.all(16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            CircleAvatar(
                              backgroundImage: NetworkImage(person.image),
                              radius: 50.0,
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(
                              person.address,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.grey,
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
                return const Center(child: CircularProgressIndicator(),);
              }
            }
        ),
      ),
    );
  }
}
