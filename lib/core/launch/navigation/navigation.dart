import 'package:flutter/material.dart';
import 'package:vexana/core/launch/navigation/route_path.dart';

class NavigationService {
  static final NavigationService _instance = NavigationService._instance;

  NavigationService._init() {
    print("v");
  }
  static NavigationService get instance => _instance;
  final removeAllOldRoutes = (Route<dynamic> route) => false;
  void navigateTo(BuildContext context, {@required String path}) {
    Navigator.of(context).pushNamed(path);
  }

  void navigateToReset(BuildContext context, {@required String path}) {
    Navigator.of(context).pushNamedAndRemoveUntil(path, removeAllOldRoutes);
  }

  void pop(BuildContext context) {
    if (Navigator.canPop(context)) {
      Navigator.of(context).pop();
    }
  }
}
