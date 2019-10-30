import 'package:flutter/material.dart';
import 'package:vexana/core/launch/constants.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme:
          ThemeData(fontFamily: Constants.POPPINS, iconTheme: IconThemeData()),
      title: 'Material App',
      home: Scaffold(),
    );
  }
}
