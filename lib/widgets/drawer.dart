import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final imageURL = "https://media.licdn.com/dms/image/D5603AQFNABKJBUCtFA/profile-displayphoto-shrink_800_800/0/1668509395869?e=2147483647&v=beta&t=xOikr0v5BWGbGA3gbqOoA2BY2nZVZ4F2-8hziVv-bNI";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                padding: EdgeInsets.zero,
                margin: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(
                      color: Colors.deepPurple
                    ),
                    accountName: Text("Viraj Vasani"),
                    accountEmail: Text("viraj.vasani1218@gmail.com"),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imageURL),
                    ),
                )
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home, 
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled, 
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail, 
                color: Colors.white,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.white,
                ),
              ), 
            )
          ],
        ),
      ),
    );
  }
}
