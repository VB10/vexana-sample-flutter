import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vexana/core/launch/constants.dart';
import 'package:vexana/core/launch/navigation/navigator.dart';
import 'package:vexana/core/launch/provider_setup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: providers,
      child: MaterialApp(
        theme: ThemeData(
            fontFamily: Constants.POPPINS, iconTheme: IconThemeData()),
        title: 'Material App',
        home: Scaffold(),
        onGenerateRoute: NavigatorGenerate.generateRoute,
      ),
    );
  }
}
