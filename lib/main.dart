import 'package:flutter/material.dart';

import 'home_page.dart';

void main(){
  runApp(NewApp());
}

class NewApp extends StatelessWidget {
  const NewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home:HomePage(),
    );
  }
}
