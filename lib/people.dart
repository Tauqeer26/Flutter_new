import 'package:flutter/material.dart';
import 'drawer.dart';
class People extends StatelessWidget {
  const People({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Center(
        child: Text(
          "People",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
   ) ;
  }
}