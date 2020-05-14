import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PostPage extends StatelessWidget {
  final String title;
  final String content;

  const PostPage({
    @required this.title,
    @required this.content,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: WebView(
        initialUrl: Uri.dataFromString(
          content ?? "",
          mimeType: 'text/html',
          encoding: utf8,
        ).toString(),
      ),
    );
  }
}
