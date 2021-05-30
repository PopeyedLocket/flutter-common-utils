import 'package:flutter/material.dart';
import 'page0.dart';

void main() {
  print("hello world!!!!!!");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Luke\'s App",
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primarySwatch: Colors.red),
        home: Page0());
  }
}
