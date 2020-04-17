import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/widgets/webview_scaffold.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

Future<void> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  print("onBackground: $message");
}

class FcmWidget extends StatefulWidget {
  final Widget child;

  const FcmWidget({@required this.child, Key key}) : super(key: key);

  @override
  _FcmWidgetState createState() => _FcmWidgetState();
}

class _FcmWidgetState extends State<FcmWidget> {
  FirebaseMessaging _firebaseMessaging;

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  @override
  void initState() {
    _firebaseMessaging = sl<FirebaseMessaging>();
    _firebaseMessaging.configure(
      onMessage: (Map<String, dynamic> message) async {
        print("onMessage: $message");
        await _showItemDialog(message);
      },
      // onBackgroundMessage: myBackgroundMessageHandler, // TODO: Fix
      onLaunch: (Map<String, dynamic> message) async {
        print("onLaunch: $message");
        _navigateToRoot();
      },
      onResume: (Map<String, dynamic> message) async {
        print("onResume: $message");
        _navigateToRoot();
      },
    );
    _firebaseMessaging.requestNotificationPermissions(
        const IosNotificationSettings(
            sound: true, badge: true, alert: true, provisional: true));
    _firebaseMessaging.onIosSettingsRegistered
        .listen((IosNotificationSettings settings) {
      print("Settings registered: $settings");
    });
    _firebaseMessaging.getToken().then((String token) {
      assert(token != null);
      print("Push Messaging token: $token");
    });
    _firebaseMessaging.subscribeToTopic("actualite");

    super.initState();
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
          child: const Text('Fermer'),
        ),
        RaisedButton(
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
        final httpUrl = Uri.parse(message["data"]["url"] as String);
        final httpsUrl = Uri.https(httpUrl.authority, httpUrl.path);
        Navigator.push<void>(
          context,
          MaterialPageRoute(
            builder: (context) => ScaffoldWebView(
              initialUrl: httpsUrl.toString(),
              title: message["data"]["title"] as String,
            ),
          ),
        );
      }
    });
  }
}
