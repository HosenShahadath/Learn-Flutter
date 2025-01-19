import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main(){
  runApp(GoogleFont());
}

class GoogleFont extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          backgroundColor: Colors.teal,
        ),
        body: Center(
          child: Text(
            'Hello I am John Doe',
            style: GoogleFonts.aBeeZee(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}