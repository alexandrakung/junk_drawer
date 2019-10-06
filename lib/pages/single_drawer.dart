import 'package:flutter/material.dart';

class SingleDrawer extends StatelessWidget {
  SingleDrawer({
    @required this.name,
  });
  final name;

  @override
  Widget build(BuildContext context) {
    return Text('$name');
  }
}
