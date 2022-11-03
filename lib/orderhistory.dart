import 'package:flutter/material.dart';
import 'drawer.dart';

class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Color.fromARGB(255, 175, 122, 76),
      title: Center(
        child: Text(
          "Order History",
          style: TextStyle(color: Colors.white),
        ),
      ),
    ),
   ) ;
  }
}