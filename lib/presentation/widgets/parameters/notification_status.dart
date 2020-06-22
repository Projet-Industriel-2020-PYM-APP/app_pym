import 'package:app_pym/presentation/blocs/notification/notification_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NotificationStatus extends StatelessWidget {
  const NotificationStatus({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationBloc, NotificationState>(
        builder: (context, state) {
      return state.when(
        initial: () {
          return const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            trailing: CircularProgressIndicator(),
          );
        },
        disabled: () {
          return ListTile(
            leading: const Icon(Icons.notifications_off),
            title: const Text("Notification"),
            subtitle: const Text("Les notifications sont désactivées"),
            trailing: Switch(
              value: false,
              onChanged: (_) {
                context
                    .bloc<NotificationBloc>()
                    .add(const NotificationEvent.enable());
              },
            ),
          );
        },
        enabled: () {
          return ListTile(
            leading: const Icon(Icons.notifications_active),
            title: const Text("Notification"),
            subtitle: const Text("Les notifications sont activées"),
            trailing: Switch(
              value: true,
              onChanged: (_) {
                context
                    .bloc<NotificationBloc>()
                    .add(const NotificationEvent.disable());
              },
            ),
          );
        },
        loaded: () {
          return const ListTile(
            leading: Icon(Icons.notifications),
            title: Text("Notification"),
            trailing: CircularProgressIndicator(),
          );
        },
      );
    });
  }
}
