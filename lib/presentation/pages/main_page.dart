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
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  static const List<String> titles = [
    "Actualité",
    "Mobilité",
    "Cartographie",
    "Services",
    "Plus",
  ];

  static const List<Widget> pages = <Widget>[
    ActualitePage(),
    MobilitePage(),
    CartographiePage(),
    ServicesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageBloc>(
      create: (_) => sl<MainPageBloc>(),
      child: SafeArea(
        child: BlocBuilder<MainPageBloc, MainPageState>(
          builder: (context, state) => Scaffold(
            body: buildBody(context, state),
            bottomNavigationBar: buildBottomNavBar(context, state),
            floatingActionButton: buildFloatingActionButton(context, state),
          ),
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
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withAlpha(150),
        onTap: (int i) => onTabTapped(context, i),
        currentIndex: state.currentIndex,
        items: _buildBottomBarItems(),
      );
    } else {
      return BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Theme.of(context).primaryColor.withAlpha(150),
        onTap: (int i) => onTabTapped(context, i),
        currentIndex: state.currentIndex,
        items: _buildBottomBarItems(),
      );
    }
  }

  FloatingActionButton buildFloatingActionButton(
      BuildContext context, MainPageState state) {
    if (state.currentIndex == 2) {
      return FloatingActionButton(
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
      );
    } else {
      return null;
    }
  }

  RelativeRect buttonMenuPosition(BuildContext context) {
    final RenderBox bar = context.findRenderObject() as RenderBox;
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    final RelativeRect position = RelativeRect.fromRect(
      Rect.fromPoints(
        bar.localToGlobal(bar.size.bottomRight(Offset.zero), ancestor: overlay),
        bar.localToGlobal(bar.size.bottomRight(Offset.zero), ancestor: overlay),
      ),
      Offset.zero & overlay.size,
    );
    return position;
  }

  Future<void> onTabTapped(BuildContext context, int newIndex) async {
    if (newIndex == 4) {
      final position = buttonMenuPosition(context);
      final result = await showMenu<String>(
        context: context,
        position: position,
        items: <PopupMenuItem<String>>[
          const PopupMenuItem<String>(
            key: Key(KeysStringNavigation.parameters),
            value: RoutePaths.parameters,
            child: Text('Paramètres'),
          ),
          const PopupMenuItem<String>(
            key: Key(KeysStringNavigation.contacts),
            value: RoutePaths.contacts,
            child: Text('Contacts'),
          ),
        ],
      );
      if (result != null) {
        await Navigator.of(context).pushNamed(result);
      }
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
        activeIcon: const Icon(
          FontAwesomeIcons.utensils,
        ),
        icon: const Icon(
          Icons.room_service,
          key: Key(KeysStringNavigation.services),
        ),
        title: Text(titles[3]),
      ),
      BottomNavigationBarItem(
        icon: const Icon(
          Icons.more_vert,
          key: Key(KeysStringNavigation.more),
        ),
        title: Text(titles[4]),
      ),
    ];
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
}
