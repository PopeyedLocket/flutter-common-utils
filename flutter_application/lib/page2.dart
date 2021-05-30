import 'package:flutter/material.dart';

class Page2 extends StatefulWidget {
  @override
  _Page2State createState() => _Page2State();
}

class _Page2State extends State<Page2> {
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
          MyTextInputWidget1(),
          MyTextInputWidget2(this.changeText),
          // MyTextInputWidget3(this.changeText),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(this.text, style: TextStyle(fontSize: 25))),
        ]));
  }
}

class MyTextInputWidget1 extends StatefulWidget {
  @override
  _MyTextInputWidget1State createState() => _MyTextInputWidget1State();
}

class _MyTextInputWidget1State extends State<MyTextInputWidget1> {
  // the controller object is used to modify the contents of what typed into the text box
  final controller = TextEditingController();
  String text = "";

  // when we're done using this widget, we need to dispose of it so its not taking up memory,
  // we call the State class's dispose() fn (through "super")
  // and then we dispose of the controller as well
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void changeText(text) {
    print(text);
    // clear text variable when user types "hello world"
    if (text == "hello world") {
      controller.clear();
      text = "";
    }
    setState(() {
      this.text = text;
    }); // setState is required to actually update the state, and forces flutter to rebuild the widget and actually display the results
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
            // icon left of text box and text above text box
            // doc's list icon images:
            // https://api.flutter.dev/flutter/material/Icons-class.html
            prefixIcon: Icon(Icons.message),
            labelText: "Text Input that updates automatically"),
        onChanged: (text) => this.changeText(
            text), // when we change this text field, run this function
      ),
      Align(
          alignment: Alignment.centerLeft,
          child: Text(this.text, style: TextStyle(fontSize: 25))),
    ]);
  }
}

class MyTextInputWidget2 extends StatefulWidget {
  final Function(String) callback;
  MyTextInputWidget2(this.callback);

  @override
  _MyTextInputWidget2State createState() => _MyTextInputWidget2State();
}

class _MyTextInputWidget2State extends State<MyTextInputWidget2> {
  // the controller object is used to modify the contents of what is typed into the text box
  final controller = TextEditingController();
  // when we're done using this widget, we need to dispose of it so its not taking up memory,
  // we call the State class's dispose() fn (through "super")
  // and then we dispose of the controller as well
  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  void f1() {
    print(controller.text);
    widget.callback(controller.text);
    controller.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: <Widget>[
      TextField(
        controller: this.controller,
        decoration: InputDecoration(
            // icon left of text box and text above text box
            // doc's list icon images:
            // https://api.flutter.dev/flutter/material/Icons-class.html
            prefixIcon: Icon(Icons.message),
            labelText: "Text Input that updated with button press",
            suffixIcon: IconButton(
                icon: Icon(Icons.send),
                splashColor: Colors.green,
                onPressed: this.f1)),
      )
    ]);
  }
}
