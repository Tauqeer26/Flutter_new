import 'package:flutter/material.dart';
import 'drawer.dart';

class UserRequest extends StatelessWidget {
  const UserRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Colors.green,
      title: Center(
        child: Text(
          "User Requests",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
   ) ;
  }
}