import 'package:flutter/material.dart';
import 'package:iprovidepro/admin.dart';
import 'package:iprovidepro/model/navigation_item.dart';
import 'package:iprovidepro/people.dart';
import 'package:iprovidepro/splash.dart';
import 'package:provider/provider.dart';
import 'navigation_provider.dart';
import 'orderhistory.dart';
import 'userrequest.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context)  {
    return ChangeNotifierProvider(
      create: ((context) => NavigationProvider()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Splash(),
      ),
    );
  }


  
}

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) => buildpages(context);


  
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
        break;
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
  