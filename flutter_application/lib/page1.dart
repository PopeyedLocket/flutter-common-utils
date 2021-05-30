import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  // This widget is the root of your application.

  // state
  String text = "";

  void changeText(String text) {
    this.setState(() {
      this.text = text;
    });
    print("root state updated");
  }

  @override
  Widget build(BuildContext context) {
    // scaffold returns the basic structure of a widget (blank white page)
    return Scaffold(
        appBar: AppBar(
            // toolbarHeight: 0.0, // remove appBar
            ), //, title: Text("App Bar")),
        body: Column(children: <Widget>[
          Align(
              alignment: Alignment.centerLeft,
              child: Text("\ndefault static text\n")),
          Container(
              color: Colors.red.shade600,
              alignment: Alignment.centerLeft,
              child: Text("Styled static text",
                  style: TextStyle(
                      fontFamily: "Rock Salt",
                      color: Colors.yellow,
                      fontSize: 30.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold))),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "\nImage:",
                style: TextStyle(fontSize: 20),
              )),
          Image.asset('assets/images/lake_image.jpg')
        ]));
  }
}
