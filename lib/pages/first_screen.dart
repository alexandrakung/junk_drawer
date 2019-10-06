import 'package:flutter/material.dart';
import 'package:flutter_speed_dial/flutter_speed_dial.dart';
import 'package:junk_drawer/pages/drawer_form.dart';
import 'package:junk_drawer/sign_in.dart';

class FirstScreen extends StatelessWidget {
  final Shader linearGradient = LinearGradient(
    colors: <Color>[Color(0xffDA44bb), Color(0xff8921aa)],
  ).createShader(Rect.fromLTWH(0.0, 0.0, 200.0, 70.0));
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          child: Padding(
            padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
            child: Card(
              elevation: 6.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(5.0),
                  ),
                ),
                child: TextField(
                  style: TextStyle(
                    fontSize: 15.0,
                    color: Colors.black,
                  ),
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    hintText: "Search...",
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: Icon(
                      Icons.filter_list,
                      color: Colors.black,
                    ),
                    hintStyle: TextStyle(
                      fontSize: 15.0,
                      color: Colors.black,
                    ),
                  ),
                  maxLines: 1,
                ),
              ),
            ),
          ),
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            60.0,
          ),
        ),
        body: Center(
            child: Text(
          'Hello Gradients!',
          style: new TextStyle(
              fontSize: 60.0,
              fontWeight: FontWeight.bold,
              foreground: Paint()..shader = linearGradient),
        )),
        // body: Center(
        //     child: PreferredSize(
        //   child: Padding(
        //     padding: EdgeInsets.only(top: 30.0, left: 10.0, right: 10.0),
        //     child: Card(
        //       elevation: 6.0,
        //       child: Container(
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           borderRadius: BorderRadius.all(
        //             Radius.circular(5.0),
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        //   preferredSize: Size(
        //     MediaQuery.of(context).size.width,
        //     60.0,
        //   ),
        // )),
        floatingActionButton: SpeedDial(
          animatedIcon: AnimatedIcons.menu_close,
          children: [
            SpeedDialChild(
                child: Icon(Icons.folder),
                label: "Add item",
                onTap: () => print("first")),
            SpeedDialChild(
                child: Icon(Icons.ac_unit),
                label: "Add drawer",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => DrawerForm()),
                  );
                })
          ],
        ));
  }
}
