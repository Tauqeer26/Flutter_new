import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'model/navigation_item.dart';
import 'navigation_provider.dart';
import 'package:provider/provider.dart';
import 'admin.dart';
import 'orderhistory.dart';
import 'people.dart';
import 'userrequest.dart';

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

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  double getSmallDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 2 / 3;
  double getBiglDiameter(BuildContext context) =>
      MediaQuery.of(context).size.width * 7 / 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEEEEEE),
      body: Stack(
        children: <Widget>[

          Positioned(
            left: -getBiglDiameter(context) / 2,
            top: -getBiglDiameter(context) / 2,
            child: Container(
              width: getBiglDiameter(context),
              height: getBiglDiameter(context),
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  gradient: LinearGradient(
                      colors: [Color(0xFF0A66C3), Color(0xFF0A66C3)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter)),
            ),
          ),

          Container(
            margin: const EdgeInsets.only(left: 160,top: 150),

            width: 105,
            height: 105,
            alignment: Alignment.center, // This is needed
            child: Image.asset('images/logo.png',
          //Constants.ASSETS_IMAGES + "logo.png",
            fit: BoxFit.contain,
            width: 300,
          ),

          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListView(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
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
                              color: Color(0xFF0A66C3),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey.shade100 )),
                            labelText: "Email",
                            enabledBorder: InputBorder.none,
                            labelStyle: const TextStyle(color: Colors.grey)),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.vpn_key,
                              color: Color(0xFF0A66C3),
                            ),
                            focusedBorder: UnderlineInputBorder(
                                borderSide:
                                BorderSide(color: Colors.grey.shade100)),
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
                          TextStyle(color: Color(0xFF0A66C3), fontSize: 11),
                        ))),
                Container(
                  margin: const EdgeInsets.fromLTRB(20, 0, 20, 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        height: 40,
                        child: Container(
                          child: Center(
                            child: Material(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.transparent,
                              child: InkWell(
                                borderRadius: BorderRadius.circular(20),
                                splashColor: Colors.blueAccent,
                                onTap: ( ) {

                                   Navigator.push(context, 
                                  MaterialPageRoute(builder: (context) =>buildpages(context)
                                  
                                  )
                                );
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
                              gradient: const LinearGradient(
                                  colors: [
                                    Color(0xFF0A66C3),
                                    Color(0xFF0A66C2)
                                  ],
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter)),
                        ),
                      ),
                      // FloatingActionButton(
                      //   onPressed: () {},
                      //   mini: true,
                      //   elevation: 0,
                      //   child: const Image(
                      //     image: AssetImage("assets/facebook2.png"),
                      //   ),
                      // ),
                      // FloatingActionButton(
                      //   onPressed: () {},
                      //   mini: true,
                      //   elevation: 0,
                      //   child: const Image(
                      //     image: AssetImage("assets/twitter.png"),
                      //   ),
                      // ),
                    ],
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
        break;
      case NavigationItem.plugin:
        // TODO: Handle this case.
        break;
      case NavigationItem.notification:
        // TODO: Handle this case.
        break;
    }
    return Container();
  }
}


