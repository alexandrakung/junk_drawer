import 'package:flutter/material.dart';

// class DrawerForm extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: Container(
//         color: Colors.white,
//         child: Center(
//           child: Column(
//             mainAxisSize: MainAxisSize.max,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: <Widget>[
//               FlutterLogo(size: 150),
//               SizedBox(height: 50),
//               Text("drawer form page")
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Create a Form widget.
class DrawerForm extends StatefulWidget {
  @override
  DrawerFormState createState() {
    return DrawerFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class DrawerFormState extends State<DrawerForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  String _name = '';

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: Form(
                key: _formKey,
                child: new ListView(children: getFormWidget()))));
  }

  List<Widget> getFormWidget() {
    List<Widget> formWidget = new List();

    formWidget.add(new TextFormField(
      decoration: InputDecoration(labelText: 'Enter Name', hintText: 'Name'),
      validator: (value) {
        if (value.isEmpty) {
          return 'Please enter a name';
        }
      },
      onSaved: (value) {
        setState(() {
          _name = value;
        });
      },
    ));
  }
}
