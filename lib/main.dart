import 'package:flutter/material.dart';

void main(){
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Material(
        child: Center(
          child: Container(
            child: Text("First App"),
          ),
        ),
      ),
    );
  }
}
