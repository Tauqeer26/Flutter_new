import 'package:flutter/material.dart';
import 'drawer.dart';
import 'model/userreqcard.dart';
import 'model/trackordercard.dart';
class TrackOrder extends StatelessWidget {
  const TrackOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Colors.blue[900],
      title: Text(
        "TRACK ORDERS",
        style: TextStyle(color: Colors.white),
      ),
    ),
    body: ListView(children: [
      Column(
      children: [
        Container(
          child: TrackCard(
          picture: Image.asset('images/map.jpeg'),
          ptitle: 'Track ID: 8624 ',
          pstitle: 'Virginia - Kentucky',
          contents: Text("Type: Fruits and Vegentables",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        Container(
          child: TrackCard(
          picture: Image.asset('images/map.jpeg'),
          ptitle: 'Track ID: 82695 ',
          pstitle: 'Houston - Kentucky',
          contents: Text("Type: Foot Wear",style: TextStyle(fontWeight: FontWeight.bold),),
          ),
        ),
        
      ],
    ),
    ]
    )
    ); 
  }
}