import 'package:flutter/material.dart';
import 'package:iprovidepro/admin.dart';
import 'model/navigation_item.dart';
import 'navigation_provider.dart';
import 'package:provider/provider.dart';




class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  bool isLoading=false;
  static final padding= EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context)=>isLoading? const LoadingPage(): Drawer(
    child: Container(
      color: Colors.blue[900],
      child: ListView(
        children: [
          buildHeader(context,
          urlImage: Image.asset('images/logo.png'),
          name: "Tauqeer Ali Khan",
          email:"khantauqeerali26@gmail.com",
          ),
          Container(
            padding: padding,
            child: Column(
              children: [
                SizedBox(height: 24,),
                
                buildMenuItem(
                  context,
                  item: NavigationItem.people,  
                  text: "All Users",
                  icon:Icons.verified_user_sharp,
                ),
                const SizedBox(height: 16,),
                buildMenuItem(
                  context,
                  item: NavigationItem.favourites,
                  text: "Product List",
                  icon:Icons.production_quantity_limits_sharp,
                ),
                
                buildMenuItem(
                  context,
                  item: NavigationItem.header,
                  text: "Order History",
                  icon:Icons.history,
                ),
                buildMenuItem(
                  context,
                  item: NavigationItem.workflow,
                  text: "User Requests",
                  icon:Icons.request_page,
                ),
                buildMenuItem(
                  context,
                  item: NavigationItem.updates,
                  text: "Track Order",
                  icon:Icons.track_changes,),
                const SizedBox(height: 24,),
                Divider(color: Colors.white70,),
                const SizedBox(height: 12,),
                buildMenuItem(
                  context,
                  item: NavigationItem.plugin,
                  text: "Logout",
                  icon:Icons.logout,),
              ],
            ),
          )
        ],
      ),
      
      ),
  );

  Widget buildMenuItem(
    BuildContext context, {
    required NavigationItem item,
    required String text,
    required IconData icon,
  }) {
    final provider = Provider.of<NavigationProvider>(context);
    final currentItem = provider.navigationItem;
    final isSelected = item == currentItem;

    final color = isSelected ? Colors.orangeAccent : Colors.white;

    return Material(
      color: Colors.transparent,
      child: ListTile(
        selected: isSelected,
        selectedTileColor: Colors.white24,
        leading: Icon(icon, color: color),
        title: Text(text, style: TextStyle(color: color, fontSize: 16)),
        onTap: ()async {
                                setState(() => isLoading=true);
                                await Future.delayed(Duration(milliseconds: 500), () {});
                                
                                selectItem(context, item);
                              setState(() => isLoading=false);
                            },
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
Widget buildHeader(
    BuildContext context, {
    required Widget urlImage,
    required String name,
    required String email,
  }) =>
      Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {},//=> selectItem(context, NavigationItem.header),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Column(
              children: [
                CircleAvatar(
                    radius: 60,backgroundColor: Colors.white,
                    
                    ),
                    SizedBox(height: 4),
                    Column(children: [
                      Text(" Tauqeer Ali Khan",style: TextStyle(fontSize: 15, color: Colors.white,fontStyle: FontStyle.italic),),
                      SizedBox(height: 4),
                      Text(" khantauqeerali26@gmail.com",style: TextStyle(fontSize: 15, color: Colors.white,fontStyle: FontStyle.italic),),
                    ],)
                // SizedBox(width: 10),
                
                // CircleAvatar(
                //   radius: 12,
                //   backgroundColor: Color.fromRGBO(30, 60, 168, 1),
                //   child: Icon(Icons.add_comment_outlined, color: Colors.white),
                // )
              ],
            ),
          ),
        ),
      );
