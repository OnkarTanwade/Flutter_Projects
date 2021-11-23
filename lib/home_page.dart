import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final int days = 10;
  final String name = 'onkar';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEW APP'),
      ),
      body: Center(
        child:Container(
          child: Text('New App $days and $name'),
        ),
      ),
      drawer: Drawer(),
    );
  }
}
