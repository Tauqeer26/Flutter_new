// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'drawer.dart';
import 'model/productcard.dart';
import 'constant/containers.dart';
class OrderHistory extends StatelessWidget {
  const OrderHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: NavigationWidget(),
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text(
          'Orders',
        ),
      ),
      body: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: RaisedButton(
                      color: Colors.white,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: (){},
                      child: Text('DELIVERED'),
                    ),
                  )
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width*0.5,
                    child: RaisedButton(
                      color: Colors.white,
                      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      onPressed: (){},
                      child: Text('RUNNING'),
                    ),
                  )
                ],
              ),
              
            ],
          ),
        ],
      ),
    );
  }
}