import 'package:flutter/material.dart';
import 'drawer.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'model/searchfield.dart';
import 'package:getwidget/getwidget.dart';

class Admin extends StatefulWidget {
  const Admin({Key? key}) : super(key: key);

  @override
  State<Admin> createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  bool isLoading=false;

  @override
  Widget build(BuildContext context) => isLoading? const LoadingPage():
     Scaffold(
        drawer: NavigationWidget(),
        appBar:
        
      AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("ADMIN PANEL",
        style: TextStyle(
          
          color: Colors.white
          
          ),),
      ),
      body: SafeArea(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Searchfield(),
                            
                            
                ),
                
                
                Flexible(
                  child: Row(
                    children: [
                      //ReuseableCard(cardchild: Center(child: Text('Vendor')),),
                      Expanded(
                        child: GFButtonBadge(
                            color: Colors.white,
                            size: 50,
                            onPressed: () {},
                            text: 'VENDOR',
                            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            
                          ),
                      ),
                      //Container(color: Colors.white,width: 2.0, height: 15.0,),
                      //VerticalDivider(color: Colors.black,thickness: 2,),
                      //const SizedBox(width: 12,),
                      Expanded(
                        child: GFButtonBadge(
                            color: Colors.white,
                            size: 50,
                            onPressed: () {},
                            text: 'CUSTOMER',
                            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            
                          ),
                      ),
                      //Container(color: Colors.white,width: 2.0, height: 15.0,),
                      
                      //VerticalDivider(color: Colors.black,thickness: 2,),
                      Expanded(
                        child: GFButtonBadge(
                                          
                            color: Colors.white,
                            size: 50,
                            onPressed: () {},
                            text: 'SALESPERSON',
                            textStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
                            
                          ),
                      ),
                    ],
                  ),
                ),
                
              ],
            ),
            
          ),
        ),
      ),
      
      
      
      );
  }


class LoadingPage extends StatelessWidget {
  const LoadingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
        body: Center(
          child: SpinKitWave(
          color: Colors.red,
          size: 50.0,
          )
        ),
    );
  }
}