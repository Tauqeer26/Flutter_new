import 'package:flutter/material.dart';
import 'model/navigation_item.dart';
import 'navigation_provider.dart';
import 'package:provider/provider.dart';




class NavigationWidget extends StatefulWidget {
  const NavigationWidget({super.key});

  @override
  State<NavigationWidget> createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {

  static final padding= EdgeInsets.symmetric(horizontal: 20);
  @override
  Widget build(BuildContext context)=> Drawer(
    child: Container(
      color: Colors.blue[900],
      child: ListView(
        children: [
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
                  text: "List of Products",
                  icon:Icons.production_quantity_limits_sharp,
                ),
                const SizedBox(height: 16,),
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
                const SizedBox(height: 24,),
                Divider(color: Colors.white70,),
                const SizedBox(height: 24,),
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
        onTap: ()=> selectItem(context, item),
      ),
    );
  }

  void selectItem(BuildContext context, NavigationItem item) {
    final provider = Provider.of<NavigationProvider>(context, listen: false);
    provider.setNavigationItem(item);
  }
}
