import 'dart:async';

import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

enum Action { Refresh, Forward, OpenBrowser }

class ScaffoldWebView extends StatefulWidget {
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
  _ScaffoldWebViewState createState() => _ScaffoldWebViewState();
}

class _ScaffoldWebViewState extends State<ScaffoldWebView> {
  final Completer<WebViewController> _controller =
      Completer<WebViewController>();
  final ValueNotifier<bool> isLoading = ValueNotifier<bool>(true);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (await (await _controller.future).canGoBack()) {
          await (await _controller.future).goBack();
          return false;
        } else {
          return true;
        }
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text(widget.title ?? ""),
          leading: CloseButton(
            onPressed: Navigator.of(context).pop,
          ),
          actions: [
            PopupMenuButton<Action>(
              onSelected: (value) async {
                if (value == Action.Forward) {
                  if (await (await _controller.future).canGoForward()) {
                    await (await _controller.future).goForward();
                  }
                } else if (value == Action.Refresh) {
                  await (await _controller.future).reload();
                } else if (value == Action.OpenBrowser) {
                  await UrlLauncherUtils.launch(
                      await (await _controller.future).currentUrl());
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
          child: Stack(
            children: [
              WebView(
                javascriptMode: JavascriptMode.unrestricted,
                initialUrl: widget.initialUrl,
                onPageFinished: (url) {
                  isLoading.value = false;
                },
                onPageStarted: (url) {
                  isLoading.value = true;
                },
                onWebViewCreated: (WebViewController wvc) {
                  _controller.complete(wvc);
                  if (this.widget.onWebViewCreated != null) {
                    this.widget.onWebViewCreated(wvc, context);
                  }
                },
              ),
              ValueListenableBuilder<bool>(
                valueListenable: isLoading,
                builder: (context, isLoading, child) {
                  if (isLoading) {
                    return const LinearProgressIndicator();
                  } else {
                    return Container();
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
