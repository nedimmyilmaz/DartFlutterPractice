import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class DrawerMenu extends StatefulWidget {
  @override
  _DrawerMenuState createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text("Nedim Yılmaz"),
            accountEmail: Text("nedimmyilmaz@gmail.com"),
            arrowColor: Colors.pink,
            currentAccountPicture:
            Icon(Icons.verified_user_rounded, color: Colors.green),
            otherAccountsPictures: [
              CircleAvatar(child: Text("AA"), backgroundColor: Colors.yellow),
              CircleAvatar(child: Text("BB"), backgroundColor: Colors.blue),
            ],
          ),
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  
                  title: Text("Ana Sayfa",
                      style: TextStyle(color: Colors.black87)),
                  leading: Icon(Icons.home_outlined),
                  tileColor: Colors.pink.shade200,
                ),
                ListTile(
                  title: Text("Kişiler",
                      style: TextStyle(color: Colors.black87)),
                  leading: Icon(Icons.perm_contact_calendar_outlined),
                  tileColor: Colors.purple.shade200,
                ),
                ListTile(
                  title: Text("Mesajlar",
                      style: TextStyle(color: Colors.black87)),
                  leading: Icon(Icons.message),
                  tileColor: Colors.green.shade200,
                ),
                ListTile(
                  title:
                  Text("Ekstra", style: TextStyle(color: Colors.black87)),
                  leading: Icon(Icons.adb_sharp),
                  tileColor: Colors.blue.shade200,
                ),
                Divider(height: 10),
                InkWell(
                  onTap: () {},
                  child: ListTile(
                    title: Text("Ana Sayfa",
                        style: TextStyle(color: Colors.red)),
                    leading: Icon(Icons.home_outlined),
                  ),
                ),
                AboutListTile(

                  applicationIcon: Icon(Icons.info_outline),
                  applicationName: " Uygulama Hakkında",
                  applicationVersion: "0.9",
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
