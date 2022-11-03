import 'package:flutter/material.dart';

class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Text(
        "People",
        style: TextStyle(color: Colors.white),
      ),
    ),
   ) ;
  }
}