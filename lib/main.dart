import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:uasgiwang/welcome.dart';

void main() {
  runApp(const FirstScreen());
}

MaterialColor myColor = MaterialColor(0xFFFCE4EC, color);
Map<int, Color> color = {
  50: Color.fromARGB(24, 18, 18, 18),
  100: Color.fromRGBO(4, 131, 184, .2),
  200: Color.fromRGBO(4, 131, 184, .3),
  300: Color.fromRGBO(4, 131, 184, .4),
  400: Color.fromRGBO(4, 131, 184, .5),
  500: Color.fromRGBO(4, 131, 184, .6),
  600: Color.fromRGBO(4, 131, 184, .7),
  700: Color.fromRGBO(4, 131, 184, .8),
  800: Color.fromRGBO(4, 131, 184, .9),
  900: Color.fromRGBO(4, 131, 184, 1),
};

class FirstScreen extends StatelessWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'UAS',
      theme: ThemeData(
        fontFamily: 'poppins',
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: myColor,
      ),
      home: Welcome(),
    );
  }
}
