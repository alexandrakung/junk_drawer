import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:junk_drawer/widgets/drawer_card.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final makeBody = Container(
      child: ListView(
          scrollDirection: Axis.vertical,
          shrinkWrap: true,
          children: <Widget>[
            DrawerCard(name: 'Bills'),
            DrawerCard(name: 'Receipts'),
            DrawerCard(name: 'Prescriptions'),
            DrawerCard(name: 'Instruction Manuals')
          ]),
    );

    return Scaffold(
      backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
      appBar: topAppBar,
      body: makeBody,
    );
  }

  final topAppBar = AppBar(
    elevation: 0.1,
    backgroundColor: Color.fromRGBO(58, 66, 86, 1.0),
    title: Text("Junk Drawer"),
    actions: <Widget>[
      IconButton(
        icon: Icon(Icons.list),
        onPressed: () {},
      )
    ],
  );
}
