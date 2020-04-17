import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum Action { Refresh, Forward, OpenBrowser }

class ScaffoldWebView extends StatelessWidget {
  final String initialUrl;
  final String title;
  final void Function(WebViewController, BuildContext) onWebViewCreated;

  const ScaffoldWebView({
    @required this.initialUrl,
    this.title,
    Key key,
    this.onWebViewCreated,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    WebViewController _controller;

    return WillPopScope(
      onWillPop: () async {
        if (await _controller.canGoBack()) {
          await _controller.goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(title ?? ""),
          leading: CloseButton(
            onPressed: Navigator.of(context).pop,
          ),
          actions: [
            PopupMenuButton<Action>(
              onSelected: (value) async {
                if (value == Action.Forward) {
                  if (await _controller.canGoForward()) {
                    await _controller.goForward();
                  }
                } else if (value == Action.Refresh) {
                  await _controller.reload();
                } else if (value == Action.OpenBrowser) {
                  await UrlLauncherUtils.launch(await _controller.currentUrl());
                }
              },
              padding: EdgeInsets.zero,
              itemBuilder: (context) => const <PopupMenuEntry<Action>>[
                PopupMenuItem<Action>(
                  value: Action.Forward,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.arrow_forward),
                    title: Text("Avancer"),
                  ),
                ),
                PopupMenuItem<Action>(
                  value: Action.Refresh,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.refresh),
                    title: Text("Rafraîchir la page"),
                  ),
                ),
                PopupMenuItem<Action>(
                  value: Action.OpenBrowser,
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: Icon(Icons.open_in_browser),
                    title: Text("Ouvrir dans le navigateur"),
                  ),
                ),
              ],
            ),
          ],
        ),
        body: SafeArea(
          child: WebView(
            javascriptMode: JavascriptMode.unrestricted,
            initialUrl: initialUrl,
            onWebViewCreated: (WebViewController wvc) {
              _controller = wvc;
              if (onWebViewCreated != null) {
                this.onWebViewCreated(wvc, context);
              }
            },
          ),
        ),
      ),
    );
  }
}
