import 'package:flutter/material.dart';
import 'page1.dart';
import 'page2.dart';
import 'page3.dart';

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

  @override
  Widget build(BuildContext context) {
    // how to allign text columns
    // https://stackoverflow.com/questions/51638176/under-which-circumstances-textalign-property-works-in-flutter

    return Scaffold(
        appBar: AppBar(),
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
            ])));
  }
}
