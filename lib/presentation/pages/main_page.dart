import 'dart:io';

import 'package:app_pym/core/keys/keys.dart';
import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:app_pym/presentation/blocs/notification/notification_bloc.dart';
import 'package:app_pym/presentation/pages/actualite_page.dart';
import 'package:app_pym/presentation/pages/cartographie_page.dart';
import 'package:app_pym/presentation/pages/mobilite_page.dart';
import 'package:app_pym/presentation/pages/services_page.dart';
import 'package:app_pym/presentation/widgets/custom_bottom_bar.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

  static const List<String> titles = [
    "Actualités",
    "Mobilité",
    "Cartographie",
    "Services",
    "Paramètres",
  ];

  static const List<Widget> pages = <Widget>[
    ActualitePage(),
    ServicesPage(),
    MobilitePage(),
    CartographiePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageBloc>(
      create: (_) => sl<MainPageBloc>(),
      child: BlocBuilder<MainPageBloc, MainPageState>(
        builder: (context, state) => Scaffold(
          body: buildBody(context, state),
          bottomNavigationBar: buildBottomNavBar(context, state),
          floatingActionButton: buildFloatingActionButton(context, state),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context, MainPageState state) {
    return BlocListener<NotificationBloc, NotificationState>(
      listener: (context, state) {
        state.maybeWhen(
            loaded: () {
              context.bloc<NotificationBloc>().firebaseMessaging.configure(
                    onMessage: (Map<String, dynamic> message) async {
                      print("onMessage: $message");
                      await _showItemDialog(message);
                    },
                    onBackgroundMessage: myBackgroundMessageHandler,
                    onLaunch: (Map<String, dynamic> message) async {
                      print("onLaunch: $message");
                      _navigateToRoot();
                    },
                    onResume: (Map<String, dynamic> message) async {
                      print("onResume: $message");
                      _navigateToRoot();
                    },
                  );
            },
            orElse: () {});
      },
      child: AnimatedSwitcher(
        duration: const Duration(milliseconds: 200),
        child: pages[state.currentIndex],
      ),
    );
  }

  Widget buildBottomNavBar(BuildContext context, MainPageState state) {
    final orientation = MediaQuery.of(context).orientation;

    if (orientation == Orientation.landscape) {
      return CustomBottomNavigationBar(
        elevation: 12.0,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withAlpha(150),
        onTap: (int i) => onTabTapped(context, i),
        currentIndex: state.currentIndex,
        items: _buildBottomBarItems(),
      );
    } else {
      return BottomNavigationBar(
        elevation: 12.0,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withAlpha(150),
        onTap: (int i) => onTabTapped(context, i),
        currentIndex: state.currentIndex,
        items: _buildBottomBarItems(),
      );
    }
  }

  Widget buildFloatingActionButton(BuildContext context, MainPageState state) {
    if (state.currentIndex == 3) {
      return filterABIs(
        child: FloatingActionButton(
          key: const Key(KeysStringNavigation.ar),
          tooltip: "Ouvrir la réalité augmentée",
          onPressed: () {
            Navigator.pushReplacementNamed(context, RoutePaths.ar);
          },
          child: Text(
            "AR",
            style: const TextStyle().copyWith(
                fontSize: Theme.of(context).textTheme.headline6.fontSize),
          ),
        ),
      );
    } else {
      return null;
    }
  }

  Widget filterABIs({Widget child}) {
    if (Platform.isAndroid) {
      return FutureBuilder<AndroidDeviceInfo>(
        future: deviceInfo.androidInfo,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final supportedAbis = snapshot.data.supportedAbis;
            print(supportedAbis);
            if (supportedAbis
                .where((element) => element.contains("arm"))
                .isNotEmpty) {
              return child;
            }
          }
          return Container();
        },
      );
    } else if (Platform.isIOS) {
      return child;
    } else {
      return Container();
    }
  }

  Future<void> onTabTapped(BuildContext context, int newIndex) async {
    if (newIndex == 4) {
      await Navigator.of(context).pushNamed(RoutePaths.parameters);
    } else if (newIndex != context.bloc<MainPageBloc>().state.currentIndex) {
      context.bloc<MainPageBloc>().add(GoToPageEvent(newIndex));
    }
  }

  List<BottomNavigationBarItem> _buildBottomBarItems() {
    return [
      BottomNavigationBarItem(
        activeIcon: const Icon(
          FontAwesomeIcons.newspaper,
        ),
        icon: const Icon(
          FontAwesomeIcons.solidNewspaper,
          key: Key(KeysStringNavigation.actualite),
        ),
        title: Text(titles[0]),
      ),
      BottomNavigationBarItem(
        activeIcon: const Icon(
          Icons.store,
        ),
        icon: const Icon(
          Icons.store,
          key: Key(KeysStringNavigation.services),
        ),
        title: Text(titles[3]),
      ),
      BottomNavigationBarItem(
        activeIcon: const Icon(
          FontAwesomeIcons.train,
        ),
        icon: const Icon(
          Icons.train,
          key: Key(KeysStringNavigation.mobilite),
        ),
        title: Text(titles[1]),
      ),
      BottomNavigationBarItem(
        activeIcon: const Icon(
          FontAwesomeIcons.mapMarked,
        ),
        icon: const Icon(
          FontAwesomeIcons.map,
          key: Key(KeysStringNavigation.cartographie),
        ),
        title: Text(titles[2]),
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.settings,
          key: Key(KeysStringNavigation.parameters),
        ),
        title: Text(titles[4]),
      ),
    ];
  }

  Widget _buildDialog(BuildContext context, Map<String, dynamic> message) {
    return AlertDialog(
      title: Text(message["notification"]["title"].toString()),
      content: Text(message["notification"]["body"].toString()),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop<bool>(context, false);
          },
          child: const Text('FERMER'),
        ),
        RaisedButton(
          color: Colors.blue,
          onPressed: () {
            Navigator.pop<bool>(context, true);
          },
          child: const Text('VOIR'),
        ),
      ],
    );
  }

  void _navigateToRoot() {
    // Clear away dialogs
    Navigator.popUntil(context, (Route<dynamic> route) => route is PageRoute);
    Navigator.popUntil(context, (route) => route.isFirst);
  }

  Future<void> _showItemDialog(Map<String, dynamic> message) {
    return showDialog<bool>(
      context: context,
      builder: (context) => _buildDialog(context, message),
    ).then((bool shouldNavigate) {
      if (shouldNavigate == true) {
        _navigateToRoot();
      }
    });
  }
}
