import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool switchState = false;
  int sliderValue = 6;
  String singleDropDownValue = "One";

  // switch
  // https://googleflutter.com/flutter-switch-example/

  // slider
  // https://www.javatpoint.com/flutter-slider

  // drop down
  // https://api.flutter.dev/flutter/material/DropdownButton-class.html
  // TODO: explore the below link to make better drop down menys
  // https://material.io/components/menus/flutter#anatomy
  // use this instead!!!!!!!!!!!!!!!! v
  // https://fluttergems.dev/dropdown/

  // containers
  // https://api.flutter.dev/flutter/widgets/Container-class.html

  // TODO: checkbox

  // TODO: drobdown checkbox

  // TODO: AnimatedCrossFade
  // https://www.youtube.com/watch?v=PGK2UUAyE54

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            margin: EdgeInsets.fromLTRB(50, 70, 0, 0),
            child: Column(children: <Widget>[
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
                      activeTrackColor: Colors.green,
                      activeColor: Colors.blue),
                  (this.switchState ? Text("On") : Text("Off")),
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
                        label: 'Set slider value',
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
              Container(
                  alignment: Alignment.centerLeft,
                  child:
                      Text("Drop Down Menu:", style: TextStyle(fontSize: 18))),
              Row(children: [
                DropdownButton(
                    value: this.singleDropDownValue,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 44,
                    elevation: 16,
                    style: const TextStyle(color: Colors.white, fontSize: 25),
                    onChanged: (String? newValue) {
                      // how null safety works in flutter (the "?" symbol)
                      // if "?" is after the var type, then the var can be null, else it cant
                      // https://proxify.io/articles/flutter-2-null-safety
                      setState(() {
                        this.singleDropDownValue = newValue!;
                      });
                    },
                    items: <String>['One', 'Two', 'Three', 'Four']
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList()),
                Container(
                    margin: EdgeInsets.fromLTRB(120, 0, 0, 0),
                    child: Text(
                      this.singleDropDownValue,
                      style: TextStyle(fontSize: 25),
                    ))
              ]),
            ])));
  }
}
