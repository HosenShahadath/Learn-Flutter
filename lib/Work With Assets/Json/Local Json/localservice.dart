import 'dart:convert';
import 'package:flutter/services.dart';
import 'person.dart';

class LocalService{
  // load and decode the Json file
  Future<String> _loadPersonAsset() async{
    return await rootBundle.loadString('assets/data/info.json');
  }

  // load and decode the Json File
Future<Person> loadPerson() async{
    String jsonString = await _loadPersonAsset();

    final jsonResponse = json.decode(jsonString);
    return Person.fromJson(jsonResponse);
  }
}