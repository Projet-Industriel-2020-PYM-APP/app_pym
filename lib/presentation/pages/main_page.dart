import 'package:app_pym/core/keys/keys.dart';
import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/presentation/pages/actualite_page.dart';
import 'package:app_pym/presentation/pages/cartographie_page.dart';
import 'package:app_pym/presentation/pages/mobilite_page.dart';
import 'package:app_pym/presentation/pages/services_page.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/main/main_page_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  PageController pageController;

  static const List<String> titles = [
    "Actualité",
    "Mobilité",
    "Cartographie",
    "Services",
    "More",
  ];

  @override
  void initState() {
    pageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<MainPageBloc>(
      create: (_) => sl<MainPageBloc>(),
      child: BlocBuilder<MainPageBloc, MainPageState>(
        builder: (context, state) => Scaffold(
          body: buildBody(context),
          bottomNavigationBar: buildBottomNavBar(context, state),
          floatingActionButton: buildFloatingActionButton(context, state),
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context) {
    return SafeArea(
      child: PageView(
        onPageChanged: (int newIndex) {
          context.bloc<MainPageBloc>().add(GoToPageEvent(newIndex));
        },
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const <Widget>[
          ActualitePage(),
          MobilitePage(),
          CartographiePage(),
          ServicesPage(),
        ],
      ),
    );
  }

  BottomNavigationBar buildBottomNavBar(
      BuildContext context, MainPageState state) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      onTap: (int i) => onTabTapped(context, i),
      currentIndex: state.currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: const Icon(
            FontAwesomeIcons.solidNewspaper,
            key: Key(KeysStringNavigation.actualite),
          ),
          title: Text(titles[0]),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.train,
            key: Key(KeysStringNavigation.mobilite),
          ),
          title: Text(titles[1]),
        ),
        BottomNavigationBarItem(
          icon: const Icon(
            Icons.location_on,
            key: Key(KeysStringNavigation.cartographie),
          ),
          title: Text(titles[2]),
        ),
        BottomNavigationBarItem(
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
      ],
    );
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
    } else if (newIndex != pageController.page.round()) {
      await pageController.animateToPage(
        newIndex,
        curve: Curves.easeInOut,
        duration: const Duration(milliseconds: 300),
      );
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
}
