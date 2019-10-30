import 'package:flutter/material.dart';
import 'package:vexana/core/launch/navigation/route_path.dart';
import 'package:vexana/ui/shared/widgets/notfound.dart';
import 'package:vexana/ui/view/authentication/login_view.dart';

class NavigatorGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePath.LOGIN:
        return MaterialPageRoute(builder: (_) => LoginView());
      default:
      return MaterialPageRoute(builder: (_) => NotfoundWidget());
    }
  }
}
