import 'package:flutter/material.dart';
import 'package:flutter_ui/screens/auth/login_page.dart';

import '../widget_list.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => WidgetList())),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Container(
                color: Colors.pink,
            
              ),
            ),
            ListTile(
              onTap: () {
                Navigator.pop(context);
              },
              tileColor: Colors.black12,
              leading: Icon(Icons.home),
              title: Text("Home"),
            ),
          ListTile(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context, MaterialPageRoute(builder: (context) =>LoginPage()));
              },
              tileColor: Colors.black12,
              leading: Icon(Icons.login),
              title: Text("LogIn"),
            ),
          ],
        ),
      ),
    );
  }
}
