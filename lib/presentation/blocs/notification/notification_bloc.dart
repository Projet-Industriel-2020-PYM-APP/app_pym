import 'dart:async';

import 'package:app_pym/presentation/widgets/webview_scaffold.dart';
import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

// Future<void> myBackgroundMessageHandler(Map<String, dynamic> message) async {
//   print("onBackground: $message");
// }

class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final SharedPreferences prefs;
  final FirebaseMessaging firebaseMessaging;
  final BuildContext context;

  NotificationBloc(
    this.context, {
    @required this.prefs,
    @required this.firebaseMessaging,
  });

  @override
  NotificationState get initialState => const NotificationState.initial();

  @override
  Stream<NotificationState> mapEventToState(
    NotificationEvent event,
  ) async* {
    yield* event.when(
      appStarted: () async* {
        firebaseMessaging.configure(
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
        firebaseMessaging.requestNotificationPermissions(
            const IosNotificationSettings(
                sound: true, badge: true, alert: true, provisional: true));
        firebaseMessaging.onIosSettingsRegistered
            .listen((IosNotificationSettings settings) {
          print("Settings registered: $settings");
        });
        await firebaseMessaging.getToken().then((String token) {
          assert(token != null);
          print("Push Messaging token: $token");
        });

        final initial = prefs.getBool('notification_enabled');
        if (initial != null) {
          if (initial) {
            yield const NotificationState.enabled();
          } else {
            yield const NotificationState.disabled();
          }
        } else {
          add(const NotificationEvent.enable());
        }
      },
      enable: () async* {
        await prefs.setBool('notification_enabled', true);
        await firebaseMessaging.subscribeToTopic("actualite");
        yield const NotificationState.enabled();
      },
      disable: () async* {
        await prefs.setBool('notification_enabled', false);
        await firebaseMessaging.unsubscribeFromTopic("actualite");
        yield const NotificationState.disabled();
      },
    );
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
