import 'package:flutter/material.dart';
import 'drawer.dart';
import 'model/userreqcard.dart';
class UserRequest extends StatelessWidget {
  const UserRequest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 35, 5, 145),
      title: Text(
        "User Requests",
        style: TextStyle(color: Colors.white),
      ),
      
    ),
    body: Column(
      children: [
        UserReqCard(
          ptitle: 'Arsalan ',
          pstitle: 'Vendor Account',
          picture1: AssetImage('images/a.jpg'),
        ),
        UserReqCard(
          ptitle: 'Arsalan ',
          pstitle: 'Customer Account',
          picture1: AssetImage('images/a.jpg'),
        ),
      ],
    )
   ) ;
  }
}