import 'dart:convert';
import 'person.dart';
import 'package:http/http.dart' as http;

class OnlineService{
  // Load and decode the Json File
  Future<Person> loadPerson() async{
    final response = await http.get(Uri.parse('https://jsonguide.technologychannel.org/info.json'));

    if(response.statusCode == 200){
      // json.decode() is used to convert json String to Json Map
      final jsonResponse = json.decode(response.body);
      return Person.fromJson(jsonResponse);
    }else{
      throw Exception('Failed to load data from server');
    }
  }
}