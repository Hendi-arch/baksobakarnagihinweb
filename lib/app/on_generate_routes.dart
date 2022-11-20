import 'package:app/app/routes.dart';
import 'package:app/pages/home/homepage.dart';
import 'package:flutter/material.dart';

class OnGeneratedRoutes {
  static List<Route<dynamic>> initialRoute(_) {
    return [MaterialPageRoute(builder: (_) => const HomePage())];
  }

  static Route<dynamic> allRoutes(RouteSettings settings) {
    switch (settings.name) {
      case Routes.startup:
        return MaterialPageRoute(builder: (_) => const HomePage());
      case Routes.home:
        return MaterialPageRoute(
          settings: const RouteSettings(
            name: Routes.home,
          ),
          builder: (_) => const HomePage(),
        );
    }

    return MaterialPageRoute(
      builder: (_) => const Scaffold(
        body: Center(
          child: Text("Route not found"),
        ),
      ),
    );
  }
}
