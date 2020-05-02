import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/data/models/app_pym/action_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/injection_container.dart' as di;
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/blocs/notification/notification_bloc.dart';
import 'package:app_pym/presentation/blocs/theme/theme_bloc.dart';
import 'package:app_pym/presentation/router.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  // HiveTypeId: 1
  Hive.registerAdapter<BatimentModel>(BatimentModelAdapter());
  // HiveTypeId: 2
  Hive.registerAdapter<EntrepriseModel>(EntrepriseModelAdapter());
  // HiveTypeId: 3
  Hive.registerAdapter<PostModel>(PostModelAdapter());
  // HiveTypeId: 4
  Hive.registerAdapter<ActionModel>(ActionModelAdapter());
  // HiveTypeId: 5
  Hive.registerAdapter<ContactCategorieModel>(ContactCategorieModelAdapter());
  // HiveTypeId: 6
  Hive.registerAdapter<ServiceCategorieModel>(ServiceCategorieModelAdapter());
  // HiveTypeId: 7
  Hive.registerAdapter<ContactModel>(ContactModelAdapter());
  // HiveTypeId: 8
  Hive.registerAdapter<ServiceModel>(ServiceModelAdapter());

  await Hive.openBox<ServiceCategorieModel>('/service_categories');
  await Hive.openBox<ServiceModel>('/services');
  await Hive.openBox<ContactCategorieModel>('/contact_categories');
  await Hive.openBox<ContactModel>('/contacts');
  await Hive.openBox<BatimentModel>('/batiments');
  await Hive.openBox<PostModel>('/posts');
  await Hive.openBox<EntrepriseModel>('/entreprises');
  await di.init(env: Environment.dev);
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (_) => sl<AuthenticationBloc>()
              ..add(const AuthenticationEvent.refresh())),
        BlocProvider(
            create: (_) => ThemeBloc(context, prefs: sl<SharedPreferences>())),
        BlocProvider(
          create: (_) => NotificationBloc(
            context,
            prefs: sl<SharedPreferences>(),
            firebaseMessaging: sl<FirebaseMessaging>(),
          )..add(const NotificationEvent.appStarted()),
        ),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(builder: (context, state) {
        return MaterialApp(
          title: 'Application Pôle Yvon Morandat',
          initialRoute: RoutePaths.root,
          onGenerateRoute: Router.generateRoute,
          theme: state.themeData,
          darkTheme: state.darkThemeData,
        );
      }),
    );
  }

  @override
  void dispose() {
    Hive.close();
    super.dispose();
  }
}
