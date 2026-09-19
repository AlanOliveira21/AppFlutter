import 'package:flutter/material.dart';

void main() {
  
  String nome = "Alan";
  
  runApp(
      MaterialApp(
      home: Scaffold(    
        backgroundColor: Colors.white,
        body: Center(
          child: Row(
            // Row    - em linhas
            // Column - em Colonas
            children: [
              Text('Flutter' ),
              Text("Dart"),
              Text("Mobile"),
            ]
          )
            
        ),
      ),
    ),
  );
}
