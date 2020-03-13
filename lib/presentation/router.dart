import 'package:flutter/material.dart';
import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/presentation/pages/main_page.dart';
import 'package:app_pym/presentation/widgets/animations/page_transitions.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.root:
        return FadeRoute<void>(
          builder: (BuildContext context) => MainPage(),
          settings: settings,
        );
      default:
        return MaterialPageRoute<void>(
          builder: (_) => Scaffold(
            body: Text(
              'No route defined for ${settings.name}',
              textAlign: TextAlign.center,
            ),
          ),
        );
    }
  }
}
