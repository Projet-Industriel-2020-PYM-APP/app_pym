import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/presentation/pages/services/fetch_all_bookings_screen.dart';
import 'package:app_pym/presentation/widgets/webview_scaffold.dart' hide Action;
import 'package:flutter/material.dart' hide Action;

class ActionButton extends StatelessWidget {
  final Action action;
  final Service service;

  const ActionButton(
    this.action, {
    Key key,
    @required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (action.html_url != null && action.html_url.isNotEmpty) {
      return FlatButton(
        onPressed: () async {
          await UrlLauncherUtils.launch(action.html_url);
        },
        child: Text(action.name?.toUpperCase() ?? "Action"),
      );
    } else if (action.name != null) {
      if (action.name.toLowerCase().contains('réserve')) {
        return IconButton(
          icon: Icon(
            Icons.insert_invitation,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => FetchAllBookingsPage(service),
              ),
            );
          },
        );
      } else if (action.name.toUpperCase().contains('SMS')) {
        return IconButton(
          icon: Icon(
            Icons.sms,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await UrlLauncherUtils.launch("sms:${service.telephone}");
          },
        );
      } else if (action.name != null &&
              action.name.toLowerCase().contains('telephone') ||
          action.name.toLowerCase().contains('téléphone')) {
        return IconButton(
          icon: Icon(
            Icons.phone,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await UrlLauncherUtils.launch("tel:${service.telephone}");
          },
        );
      } else if (action.name.toLowerCase().contains('localise')) {
        return IconButton(
          icon: Icon(
            Icons.place,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await UrlLauncherUtils.launch(
                'https://maps.google.com/?q=${service.address}');
          },
        );
      } else if (action.name.toLowerCase().contains('web')) {
        return IconButton(
          icon: Icon(
            Icons.web,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await Navigator.of(context)
                .push<void>(MaterialPageRoute(builder: (context) {
              return ScaffoldWebView(
                initialUrl: service.website,
                title: service.website,
              );
            }));
          },
        );
      }
    }
    return FlatButton(
      onPressed: () async {
        await Navigator.of(context).push<void>(
          MaterialPageRoute(
            builder: (context) => FetchAllBookingsPage(service),
          ),
        );
      },
      child: Text(action.name?.toUpperCase() ?? "Action"),
    );
  }
}
