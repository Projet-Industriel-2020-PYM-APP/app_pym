import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'notification_bloc.freezed.dart';
part 'notification_event.dart';
part 'notification_state.dart';

Future<void> myBackgroundMessageHandler(Map<String, dynamic> message) async {
  print("onBackground: $message");
}

@prod
@injectable
@singleton
class NotificationBloc extends Bloc<NotificationEvent, NotificationState> {
  final SharedPreferences prefs;
  final FirebaseMessaging firebaseMessaging;

  NotificationBloc({
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
        firebaseMessaging.requestNotificationPermissions(
            const IosNotificationSettings(
                sound: true, badge: true, alert: true, provisional: true));
        firebaseMessaging.onIosSettingsRegistered
            .listen((IosNotificationSettings settings) {
          print("Settings registered: $settings");
        });
        await firebaseMessaging.getToken().then((String token) {
          print("Push Messaging token: $token");
        });
        yield const NotificationState.loaded();
        add(const NotificationEvent.loaded());
      },
      loaded: () async* {
        final initial = prefs.getBool('notification_enabled');
        if (initial != null) {
          if (initial) {
            add(const NotificationEvent.enable());
          } else {
            add(const NotificationEvent.disable());
          }
        } else {
          add(const NotificationEvent.enable());
        }
      },
      enable: () async* {
        await prefs.setBool('notification_enabled', true);
        await firebaseMessaging
            .subscribeToTopic("actualite")
            .timeout(const Duration(seconds: 10), onTimeout: () {});
        yield const NotificationState.enabled();
      },
      disable: () async* {
        await prefs.setBool('notification_enabled', false);
        await firebaseMessaging
            .unsubscribeFromTopic("actualite")
            .timeout(const Duration(seconds: 10), onTimeout: () {});
        yield const NotificationState.disabled();
      },
    );
  }
}
