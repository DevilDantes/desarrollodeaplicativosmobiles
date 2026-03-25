import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Unitecnar',
      home: Scaffold(
        appBar: AppBar(title: Text('Unitecnar 5.0'),
        
        ),
        body: Center(
          child: Text('Hola Firulais'),
        ),
        floatingActionButton:  
        FloatingActionButton(
          onPressed: (()=>{}),
          child: Icon(Icons.plus_one)
          ),
      ),
      );
  }
}