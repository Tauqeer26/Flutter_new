// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/navigation_item.dart';
import 'navigation_provider.dart';
import 'package:provider/provider.dart';
import 'admin.dart';
import 'orderhistory.dart';
import 'people.dart';
import 'userrequest.dart';
import 'trackorder.dart';
import 'logout.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);
  
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool isLoading=false;
  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;

  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) => isLoading? const LoadingPage(): Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[

          // Positioned(
          //   left: -getBiglDiameter(context) / 2,
          //   top: -getBiglDiameter(context) / 2,
          //   child: Container(
          //     width: getBiglDiameter(context),
          //     height: getBiglDiameter(context),
          //     decoration: const BoxDecoration(
          //         shape: BoxShape.circle,
          //         gradient: LinearGradient(
          //             colors: [Color(0xFF0A66C3), Color(0xFF0A66C3)],
          //             begin: Alignment.topCenter,
          //             end: Alignment.bottomCenter)),
          //   ),
          // ),

          Column(
            mainAxisAlignment:MainAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(120.0),
                
                width: 155,
                height: 150,
                alignment: Alignment.center, // This is needed
                child: Image.asset('images/ss.png',
              //Constants.ASSETS_IMAGES + "logo.png",
                fit: BoxFit.contain,
                width: 300,
              ),
              
              ),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 251, 253, 254),
                      //border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(10)),
                  margin: const EdgeInsets.fromLTRB(20, 300, 20, 10),
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 25),
                  child: Column(
                    children:  <Widget>[
                      TextField(
                        decoration: InputDecoration(
                            icon: Icon(
                              Icons.email,
                              color: Colors.blue[900],
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Color.fromARGB(255, 5, 66, 127) )),
                            labelText: "Email",
                            // prefixIcon: const Icon(Icons.person, color: Color.fromARGB(255, 51, 19, 125),),
                            // enabledBorder: InputBorder.a,
                            labelStyle: const TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color.fromARGB(255, 5, 66, 127),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Color.fromARGB(255, 5, 66, 127))),
                            labelText: "Password",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(color: Colors.grey)),

                      )
                    ],
                  ),
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 10),
                        child: const Text(
                          "FORGOT PASSWORD?",
                          style:
                          TextStyle(color: Color.fromARGB(255, 5, 66, 127), fontSize: 11),
                        ))),
                Container(
                  margin: const EdgeInsets.fromLTRB(40, 30, 40, 30),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    height: 40,
                    child: Container(
                      // ignore: sort_child_properties_last
                      child: Center(
                        child: Material(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(0, 33, 33, 122),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(20),
                            splashColor: Colors.blueAccent,
                            onTap: ( )async {
                                setState(() => isLoading=true);
                                await Future.delayed(Duration(milliseconds: 1000), () {});
                                
                               Navigator.push(context, 
                              MaterialPageRoute(builder: (context) =>buildpages(context) ) );
                              setState(() => isLoading=false);
                            },
                            child: Center(
                              child: Text(
                                "SIGN IN",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700),
                              ),
                            ),
                          ),
                        ),
                      ),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color.fromARGB(255, 5, 66, 127),
                              
                              
                              )
                              ),
                    ),
                ),
                // Row(
                //   mainAxisAlignment: MainAxisAlignment.center,
                //   children: const <Widget>[
                //     Text(
                //       "DON'T HAVE AN ACCOUNT ? ",
                //       style: TextStyle(
                //           fontSize: 11,
                //           color: Colors.grey,
                //           fontWeight: FontWeight.w500),
                //     ),
                //     Text(
                //       " SIGN UP",
                //       style: TextStyle(
                //           fontSize: 11,
                //           color: Color(0xFFFF4891),
                //           fontWeight: FontWeight.w700),
                //     )
                //   ],
                // )
              ],
            ),
          )
        ],
      ),
    );
  }

    Widget buildpages( 
    BuildContext context,
  ){
    final provider=Provider.of<NavigationProvider>(context);
    final navigationItem=provider.navigationItem;

    switch (navigationItem){
      case NavigationItem.people:
        return Admin();

      case NavigationItem.favourites:
        return People();
      case NavigationItem.header:
        return OrderHistory(); 
        // TODO: Handle this case.
        
      case NavigationItem.workflow:
        return UserRequest(); 
        // TODO: Handle this case.
        
      case NavigationItem.updates:
        // TODO: Handle this case.
        return TrackOrder();
      case NavigationItem.plugin:
        // ignore: todo
        // TODO: Handle this case.
        return MainPage();
      case NavigationItem.notification:
        // TODO: Handle this case.
        break;
    }
    return Container();
  }


