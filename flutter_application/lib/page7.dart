import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sizer/sizer.dart';

// used to detect OS type
import 'package:os_detect/os_detect.dart' as Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
// "as" vs "show" vs "hide"
// https://stackoverflow.com/questions/19723063/what-is-the-difference-between-show-and-as-in-an-import-statement

// How to detect what platform a Flutter app is running on
// https://www.flutterclutter.dev/flutter/tutorials/how-to-detect-what-platform-a-flutter-app-is-running-on/2020/127/

// replace dart.io with os_detect becasue dart.io was erroring
// when trying to determine the OS
// https://pub.dev/packages/os_detect
// "Note, we'd prefer disallowing importing dart:io altogether on the Web -
// i.e., give a compile time error. Today (at least for now),
// we allow importing, but throw at runtime."
// https://github.com/flutter/flutter/issues/36126
// but "Platform" is used in the flutter docs so idk
// https://api.flutter.dev/flutter/dart-io/Platform-class.html

// this could be used to get even more device info
// https://stackoverflow.com/questions/61571708/device-browser-details-when-running-flutter-web
// https://github.com/fluttercommunity/plus_plugins/blob/main/packages/device_info_plus/example/lib/main.dart#L138

// Creating responsive and adaptive apps
// https://flutter.dev/docs/development/ui/layout/adaptive-responsive

class Page7 extends StatefulWidget {
  @override
  _Page7State createState() => _Page7State();
}

class _Page7State extends State<Page7> {
  void go_to_responsive_page1() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResponsivePage1()));
  }

  void go_to_responsive_page2() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResponsivePage2()));
  }

  void go_to_responsive_page3() {
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => ResponsivePage3()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Responsive & Adaptive Pages"),
        ),
        body: Align(
            alignment: Alignment.center,
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_responsive_page1,
                      child: Text("Page responsive to device",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_responsive_page2,
                      child: Text("Page responsive to screen",
                          style: TextStyle(fontSize: 25)))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: TextButton(
                      onPressed: go_to_responsive_page3,
                      child: Text("Page that scales with screen",
                          style: TextStyle(fontSize: 25)))),
            ])));
  }
}

class ResponsivePage1 extends StatefulWidget {
  @override
  _ResponsivePage1State createState() => _ResponsivePage1State();
}

class _ResponsivePage1State extends State<ResponsivePage1> {
  PlatformInfo pInfo = PlatformInfo();
  Layout layout = Layout.Vertical;
  String device = "Phone";

  _ResponsivePage1State() {
    this.layout = pInfo.isAppOS() ? Layout.Vertical : Layout.Horizontal;
    this.device = pInfo.isAppOS() ? "Phone" : "Computer";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Widgets responsive & adaptive to screensize"),
        ),
        body: Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "This page will have a vertical layout on a computer, and a horizontal layout on a phone",
                      style: TextStyle(fontSize: 25))),
              Container(
                height: 50,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Device: ${this.device}",
                      style: TextStyle(fontSize: 25))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      layout == Layout.Vertical
                          ? "Layout: Vertical"
                          : "Layout: Horizontal",
                      style: TextStyle(fontSize: 25))),
              Container(
                height: 50,
              ),
              this.layout == Layout.Vertical
                  ? Column(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 70,
                        ),
                        Icon(
                          Icons.cabin,
                          size: 70,
                        ),
                        Icon(
                          Icons.dangerous,
                          size: 70,
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 70,
                        ),
                        Icon(
                          Icons.cabin,
                          size: 70,
                        ),
                        Icon(
                          Icons.dangerous,
                          size: 70,
                        )
                      ],
                    )
            ])));
  }
}

enum Layout { Vertical, Horizontal }

class PlatformInfo {
  bool isDesktopOS() {
    return Platform.isMacOS || Platform.isLinux || Platform.isWindows;
  }

  bool isAppOS() {
    return Platform.isIOS || Platform.isAndroid;
  }

  bool isWeb() {
    return kIsWeb;
  }

  PlatformType getCurrentPlatformType() {
    if (kIsWeb) {
      return PlatformType.Web;
    }
    if (Platform.isMacOS) {
      return PlatformType.MacOS;
    }
    if (Platform.isFuchsia) {
      return PlatformType.Fuchsia;
    }
    if (Platform.isLinux) {
      return PlatformType.Linux;
    }
    if (Platform.isWindows) {
      return PlatformType.Windows;
    }
    if (Platform.isIOS) {
      return PlatformType.iOS;
    }
    if (Platform.isAndroid) {
      return PlatformType.Android;
    }
    return PlatformType.Unknown;
  }
}

enum PlatformType { Web, iOS, Android, MacOS, Fuchsia, Linux, Windows, Unknown }

class ResponsivePage2 extends StatefulWidget {
  @override
  _ResponsivePage2State createState() => _ResponsivePage2State();
}

class _ResponsivePage2State extends State<ResponsivePage2> {
  Layout layout = Layout.Vertical;

  @override
  Widget build(BuildContext context) {
    layout =
        MediaQuery.of(context).size.height > MediaQuery.of(context).size.width
            ? Layout.Vertical
            : Layout.Horizontal;
    return Scaffold(
        appBar: AppBar(title: Text("Page responsive to screen")),
        body: Align(
            alignment: Alignment.centerLeft,
            child: Column(children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "This page will have a vertical layout when screen height is greater than screen width, and a horizontal layout when screen height is less than screen width",
                      style: TextStyle(fontSize: 25))),
              Container(
                height: 50,
              ),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "Screen Width: ${MediaQuery.of(context).size.width.floor()}",
                      style: TextStyle(fontSize: 25))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      "Screen Height: ${MediaQuery.of(context).size.height.floor()}",
                      style: TextStyle(fontSize: 25))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      layout == Layout.Vertical
                          ? "Layout: Vertical"
                          : "Layout: Horizontal",
                      style: TextStyle(fontSize: 25))),
              Container(
                height: 50,
              ),
              this.layout == Layout.Vertical
                  ? Column(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 70,
                        ),
                        Icon(
                          Icons.cabin,
                          size: 70,
                        ),
                        Icon(
                          Icons.dangerous,
                          size: 70,
                        )
                      ],
                    )
                  : Row(
                      children: [
                        Icon(
                          Icons.check_box,
                          size: 70,
                        ),
                        Icon(
                          Icons.cabin,
                          size: 70,
                        ),
                        Icon(
                          Icons.dangerous,
                          size: 70,
                        )
                      ],
                    )
            ])));
  }
}

class SizeConfig {
  // static MediaQueryData _mediaQueryData;
  static double screenWidth = 0.0;
  static double screenHeight = 0.0;

  void init(BuildContext context) {
    MediaQueryData _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

class ResponsivePage3 extends StatefulWidget {
  @override
  _ResponsivePage3State createState() => _ResponsivePage3State();
}

class _ResponsivePage3State extends State<ResponsivePage3> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.blue,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Container(
            color: Colors.green,
            height: MediaQuery.of(context).size.height * 0.90, // 90.h,
            width: MediaQuery.of(context).size.width * 0.90, // 90.w
          )
        ]));
  }
}
