import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool switchState = false;
  int sliderValue = 6;
  int singleDropDownValue = 1;

  // checkbox

  // switch
  // https://googleflutter.com/flutter-switch-example/

  // slider
  // https://www.javatpoint.com/flutter-slider

  // single drop down
  // https://yashodgayashan.medium.com/flutter-dropdown-button-widget-469794c886d0

  // checkbox drop down

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(children: <Widget>[
          Row(
            children: [
              Switch(
                  value: switchState,
                  onChanged: (value) {
                    setState(() {
                      this.switchState = value;
                      print(this.switchState);
                    });
                  },
                  activeTrackColor: Colors.yellow,
                  activeColor: Colors.orangeAccent),
              (this.switchState ? Text("On") : Text("Off"))
            ],
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Slider(
                    value: sliderValue.toDouble(),
                    min: 1.0,
                    max: 100.0,
                    divisions: 100,
                    activeColor: Colors.blueAccent,
                    inactiveColor: Colors.red,
                    label: 'Set volume value',
                    onChanged: (double newValue) {
                      setState(() {
                        sliderValue = newValue.round();
                      });
                    },
                    semanticFormatterCallback: (double newValue) {
                      return '${newValue.round()} dollars';
                    }),
                Text("${this.sliderValue}")
              ]),
          // Container(
          //   padding: EdgeInsets.all(20.0),
          //   child: DropdownButton(
          //       value: this.singleDropDownValue,
          //       items: [
          //         DropdownMenuItem(
          //           child: Text("First Item"),
          //           value: 1,
          //         ),
          //         DropdownMenuItem(
          //           child: Text("Second Item"),
          //           value: 2,
          //         ),
          //         DropdownMenuItem(child: Text("Third Item"), value: 3),
          //         DropdownMenuItem(child: Text("Fourth Item"), value: 4)
          //       ],
          //       onChanged: (value) {
          //         setState(() {
          //           this.singleDropDownValue = value;
          //         });
          //       }),
          // )
        ]));
  }
}
