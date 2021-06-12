import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';
import 'page4.dart';
import 'page5.dart';
import 'page6.dart';
import 'page7.dart';

class Page0 extends StatefulWidget {
  @override
  _Page0State createState() => _Page0State();
}

class _Page0State extends State<Page0> {
  void go_to_page1() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page1()));
  }

  void go_to_page2() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page2()));
  }

  void go_to_page3() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page3()));
  }

  void go_to_page4() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page4()));
  }

  void go_to_page5() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page5()));
  }

  void go_to_page6() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page6()));
  }

  void go_to_page7() {
    Navigator.push(context, MaterialPageRoute(builder: (context) => Page7()));
  }

  @override
  Widget build(BuildContext context) {
    // how to allign text columns
    // https://stackoverflow.com/questions/51638176/under-which-circumstances-textalign-property-works-in-flutter

    // Customizing the AppBar in Flutter: An overview with examples
    // https://blog.logrocket.com/flutter-appbar-tutorial/

    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter Common Utils"),
          // toolbarHeight: 0.0, // remove appBar
        ),
        body: Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page1,
                      child: Text("Static Text and Images",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page2,
                      child:
                          Text("Text Inputs", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page3,
                      child: Text("Switch, Dropdown, and Sliders",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page4,
                      child: Text("Charts", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page5,
                      child: Text("Shapes", style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page6,
                      child: Text("Scrollable List",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_page7,
                      child: Text("Responsive & Adaptive Pages",
                          style: TextStyle(fontSize: 25)))),
            ])));
  }
}
