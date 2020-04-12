import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:firebase_analytics/observer.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/injection_container.dart' as di;
import 'package:app_pym/presentation/router.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';

import 'data/models/map_pym/entreprise_model.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter<BatimentPositionModel>(BatimentPositionModelAdapter());
  Hive.registerAdapter<BatimentModel>(BatimentModelAdapter());
  Hive.registerAdapter<EntrepriseModel>(EntrepriseModelAdapter());
  await Hive.openBox<List<BatimentPositionModel>>('/batiments_position');
  await Hive.openBox<BatimentModel>('/batiments');
  await Hive.openBox<EntrepriseModel>('/entreprises');
  di.init(env: Environment.prod);
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final FirebaseAnalytics analytics = FirebaseAnalytics();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application Pôle Yvon Morandat',
      initialRoute: RoutePaths.root,
      onGenerateRoute: Router.generateRoute,
      navigatorObservers: [
        FirebaseAnalyticsObserver(analytics: analytics),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.red[900],
        accentColor: Colors.redAccent[700],
        appBarTheme: AppBarTheme(
          color: Colors.white,
          textTheme: Theme.of(context).textTheme.apply(bodyColor: Colors.black),
          iconTheme: Theme.of(context).iconTheme.copyWith(color: Colors.black),
          actionsIconTheme:
              Theme.of(context).iconTheme.copyWith(color: Colors.black),
        ),
      ),
      // darkTheme: ThemeData(
      //   brightness: Brightness.dark,
      //   primaryColor: Colors.red[900],
      //   accentColor: Colors.redAccent[700],
      //   appBarTheme: AppBarTheme(
      //     color: Colors.black,
      //   ),
      // ),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
