import 'package:flutter/material.dart';
import 'package:task_management/app/routes/routes.dart';
import 'package:task_management/screens/MainHome/view/mainHomeView.dart';

class Routes {
  static Route<dynamic> generateRoutes(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case AppRoutes.homeMain:
        return MaterialPageRoute(
            builder: (BuildContext context) => const MainHomeView());
      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
                child: Text(
              "No route defined",
              style: Theme.of(_).textTheme.titleMedium,
            )),
          );
        });
    }
  }
}
