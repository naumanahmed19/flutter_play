import 'package:flutter/material.dart';
import './pages/page_root.dart';

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
    );
  }
}
