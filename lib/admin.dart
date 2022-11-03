import 'package:flutter/material.dart';
import 'drawer.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: NavigationWidget(),
        appBar:
        
      AppBar(
        backgroundColor: Colors.blue[900],
        title: Center(
          child: Text("ADMIN PANEL",
          style: TextStyle(
            
            color: Colors.white
            
            ),),
        ),
      ),
      body: Container(),
      
      
      
      );
  }
}