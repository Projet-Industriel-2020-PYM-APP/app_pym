import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class CartographiePage extends StatelessWidget {
  const CartographiePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const WebView(
      initialUrl: 'https://map-pym.com/',
      javascriptMode: JavascriptMode.unrestricted,
    );
  }
}
