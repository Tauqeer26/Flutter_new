import 'package:flutter/material.dart';
import 'drawer.dart';

class LogOut extends StatelessWidget {
  const LogOut({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Colors.teal,
      title: Center(
        child: Text(
          "Logout",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
   ) ;
  }
}