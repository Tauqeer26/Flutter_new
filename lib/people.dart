import 'package:flutter/material.dart';
import 'package:iprovidepro/admin.dart';
import 'drawer.dart';
import 'model/searchfield.dart';
import 'model/productcard.dart';
import 'model/newcard.dart';
class People extends StatefulWidget {
  const People({Key? key}) : super(key: key);

  @override
  State<People> createState() => _PeopleState();
}

class _PeopleState extends State<People> {

  bool isLoading=false;
  @override
  Widget build(BuildContext context) => isLoading? const LoadingPage(): Scaffold(
     drawer: NavigationWidget(),
    appBar: AppBar(
      backgroundColor: Colors.blue[900],
      title: Text(
        "PRODUCT LISTS",
        style: TextStyle(color: Colors.white),
      ),
      
    ),
    body: ListView(
      children: [
        Column(
        children: [
          Container(
            child: Padding(padding: EdgeInsets.all(20.0),
            child: Searchfield(),),
          ),
          Padding(
            padding: const EdgeInsets.only(left:35.0,right: 35.0,),
            child: Card(
              elevation: 50,
              shadowColor: Colors.black,
              color: Colors.white54,
              
              child: Column(
                children: [
                  Newcard(
                    ptitle: 'Air Pods',
                    pstitle: 'Electronic Item ',
                    
                    
                    picture1: AssetImage('images/product.jfif'),
                  ),
                  //SizedBox(height: 5.0,),
                  Newcard(
                    ptitle: 'Air MAx Nike',
                    pstitle: "Foot Wear",
                    
                    picture1:  AssetImage('images/product2.jfif'),
                  
                  ),
                  Newcard(
                    ptitle: 'Air Pods',
                    pstitle: 'Electronic Item ',
                    
                    
                    picture1: AssetImage('images/product.jfif'),
                  ),
              // ProductCard(),
              // SizedBox(height: 10,),
              // ProductCard(),
              
              // SizedBox(height: 10,),
              // ProductCard(),
              
              // SizedBox(height: 10,),
              // ProductCard(),
              
              // SizedBox(height: 20,),
              // ProductCard(),
                ],
              ),
            ),
          )
          
        ],
      ),
      ],
    ),
   ) ;
  }
