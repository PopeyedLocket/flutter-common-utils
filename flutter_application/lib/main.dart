// @dart=2.9
/* how to disable null safety
    temporary fix to get flutter charts library working
      this lib is developed internally and not accepting public pull requests
      this lib is just a mirror of the internal one, which is still being
      maintained but the mirror is only synced about 1-2 times a year. at the
      end of the below thread someone from google said this null safelty issue
      has been fixed in the interal version but will be updated in the public
      version in a few months (from March 2021)
      https://github.com/google/charts/issues/579
https://stackoverflow.com/questions/65032275/error-a-library-cant-opt-out-of-null-safety-by-default-when-using-sound-null
*/
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'page0.dart';

void main() {
  print("hello world!!!!!!");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return MaterialApp(
            title: "App Name",
            debugShowCheckedModeBanner: false,
            theme: ThemeData.dark(), //(primarySwatch: Colors.blue),
            home: Page0());
      },
    );
  }
}
