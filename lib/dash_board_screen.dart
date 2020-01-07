import 'package:flutter/material.dart';
import 'package:taxonapp/screens/videos.dart';

class AppDrawer extends StatelessWidget {
  static const routeName = '/dash_board';
  @override
  Widget build(BuildContext context) {
    Widget _createHeader() {
      return UserAccountsDrawerHeader(
        accountName: Text('Mposa Mabwe'),
        accountEmail: Text('mposamabwe@email.com'),
        currentAccountPicture: CircleAvatar(
          backgroundColor: Colors.white,
        ),
      );
    }

    Widget _createDrawerItem(
        {IconData icon, String text, GestureTapCallback onTap}) {
      return ListTile(
        title: Row(
          children: <Widget>[
            Icon(icon),
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(text),
            ),
          ],
        ),
        onTap: onTap,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
      ),
      body: Center(
        child: Text('Welcome'),
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            _createHeader(),
            ListTile(
              title: Text('Education'),
            ),
            _createDrawerItem(
                icon: Icons.filter,
                text: 'Videos',
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => VideoScreen()));
                }),
            _createDrawerItem(
              icon: Icons.recent_actors,
              text: 'Articles',
              onTap: () {},
            ),
            ListTile(
              title: Text('Registration'),
            ),
            _createDrawerItem(
                icon: Icons.credit_card,
                text: 'Amendment',
                onTap: () {
                  Navigator.of(context).pop();
                }),
            _createDrawerItem(
              icon: Icons.library_books,
              text: 'New Tax Account',
              onTap: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}
