import 'package:flutter/material.dart';

//void main(){
// runApp(MyApp());
//}
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
          backgroundColor: Colors.black,
        ),
        body: Text('This is my default text'),
      ),
    );
  }
}
