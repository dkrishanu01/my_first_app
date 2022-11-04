import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  decoration: BoxDecoration(color: Colors.deepPurple),
                  currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg"),
                  ),
                  margin: EdgeInsets.zero,
                  accountName: Text("Krishanu Das",
                      style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )
                  ),
                  accountEmail: Text("dkrishanu01@gmail.com",
                      style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                  )

                  ),
                ),
            ),
            ListTile(
              leading: Icon(
                  CupertinoIcons.home,
                   color: Colors.white,
              ),
              title: Text("Home",
              style: TextStyle(
                fontSize: 18,
                color: Colors.white,
              )
              ),

            ),

            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text("Profile",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),

            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text("Email Me",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  )
              ),

            )
          ],
        ),
      ),
    );
  }
}
