import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Drawer(
      child: new Column(
        children: <Widget>[
          new UserAccountsDrawerHeader(
            accountName: const Text('Zach Widget'),
            accountEmail: const Text('zach.widget@example.com'),
            currentAccountPicture: const CircleAvatar(
              backgroundImage: const AssetImage('assets/u1.png'),
            ),
            otherAccountsPictures: <Widget>[
              new GestureDetector(
                onTap: () {
                  _onOtherAccountsTap(context);
                },
                child: new Semantics(
                  label: 'Switch to Account B',
                  child: const CircleAvatar(
                    backgroundImage: const AssetImage('assets/u2.png'),
                  ),
                ),
              ),
            ],
            margin: EdgeInsets.zero,
            onDetailsPressed: () {},
          ),
          new MediaQuery.removePadding(
            context: context,
            child: new Expanded(
              child: new ListView(
                padding: const EdgeInsets.only(top: 8.0),
                children: <Widget>[
                  ListTile(
                    leading: const Icon(Icons.dialpad),
                    title: const Text('My apps & games'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.notifications),
                    title: const Text('My notifications'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.autorenew),
                    title: const Text('Subscription'),
                    onTap: () {},
                  ),
                  Divider(),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.gamepad),
                    title: const Text('Games'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: const Icon(Icons.account_box),
                    title: const Text('Account'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void _onOtherAccountsTap(BuildContext context) {
    showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return new AlertDialog(
          title: const Text('Account switching not implemented.'),
          actions: <Widget>[
            new FlatButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}
