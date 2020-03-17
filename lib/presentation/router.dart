import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/presentation/pages/cartographie/ar_screen.dart';
import 'package:app_pym/presentation/pages/contact_page.dart';
import 'package:app_pym/presentation/pages/main_page.dart';
import 'package:app_pym/presentation/pages/parameters_page.dart';
import 'package:app_pym/presentation/widgets/animations/page_transitions.dart';
import 'package:flutter/material.dart';

class Router {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutePaths.root:
        return FadeRoute<void>(
          builder: (BuildContext context) => MainPage(),
          settings: settings,
        );
      case RoutePaths.parameters:
        return MaterialPageRoute<void>(
          builder: (BuildContext context) => const ParametersPage(),
          settings: settings,
        );
      case RoutePaths.ar:
        return MaterialPageRoute<void>(
          builder: (BuildContext context) => const ArScreen(),
          settings: settings,
        );
      case RoutePaths.contacts:
        return MaterialPageRoute<void>(
          builder: (BuildContext context) => const ContactPage(),
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
