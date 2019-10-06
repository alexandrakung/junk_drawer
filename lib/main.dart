import 'package:flutter/material.dart';
import 'package:junk_drawer/pages/first_screen.dart';
import 'package:junk_drawer/pages/home.dart';
import 'package:junk_drawer/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
