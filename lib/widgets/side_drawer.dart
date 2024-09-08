import 'package:flutter/material.dart';
import 'package:today_todo_app/theme/my_color.dart';

class SideDrawer extends StatelessWidget {
  const SideDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: MyColor().spaceCadet),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/images/farzad.png'),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  'Farzad Seyyedzadeh',
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context); // Close the drawer
            },
          ),
        ],
      ),
    );
  }
}
