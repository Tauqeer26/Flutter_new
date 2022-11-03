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
      body: Container(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                
                children: [
                  Container(
                    width: 100,
                    height: 80,
                    color: Color.fromARGB(96, 51, 22, 22),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 100,
                    height: 80,
                    color: Color.fromARGB(96, 51, 22, 22),
                  ),
                  SizedBox(height: 20,),
                  Container(
                    width: 100,
                    height: 80,
                    color: Color.fromARGB(96, 51, 22, 22),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      
      
      
      );
  }
}