import 'package:flutter/material.dart';
import './pages/page_root.dart';
import './pages/page_details.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.green[600],
        accentColor: Colors.green[300],
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => RootPage(),
      },
      onGenerateRoute: (RouteSettings settings) {
        final List<String> pathElements = settings.name.split('/');
        if (pathElements[0] != '') {
          return null;
        }
        if (pathElements[1] == 'product') {
          final int index = int.parse(pathElements[2]);
          return MaterialPageRoute<bool>(
            builder: (BuildContext context) => DetailsPage(index),
          );
        }
      },
      onUnknownRoute: (RouteSettings setting) {
        return MaterialPageRoute(builder: (BuildContext context) => RootPage());
      },
    );
  }
}
