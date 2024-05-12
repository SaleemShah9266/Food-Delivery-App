import 'package:flutter/material.dart';
import 'package:fooddeliveryapp/components/My_drawer_tile.dart';

import '../pages/setting_page.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        children: [
          Padding(padding: EdgeInsets.only(top: 60.0)),
          // app logo
          Icon(
            Icons.lock_open_rounded,
            size: 50,
            color: Theme.of(context).colorScheme.inversePrimary,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Divider(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          // home list tile
          MyDrawerTile(
            text: "H o m e",
            icon: Icons.home,
            onTap: () => Navigator.pop(context),
          ),
          // setting list tile
          MyDrawerTile(
            text: "S e t t i n g",
            icon: Icons.settings,
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => SettingPage()));
            },
          ),

          Spacer(),

          MyDrawerTile(
            text: "L O G  O U T",
            icon: Icons.logout,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
