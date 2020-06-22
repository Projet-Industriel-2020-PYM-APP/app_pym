import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:html/parser.dart';

import 'package:flutter/material.dart';
import 'package:share/share.dart';

class PostPage extends StatelessWidget {
  final Post post;

  const PostPage(
    this.post, {
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     post.title,
      //     style: const TextStyle(color: Colors.white),
      //   ),
      //   centerTitle: true,
      //   iconTheme: const IconThemeData(color: Colors.white),
      //   backgroundColor: Colors.red[900],
      // ),
      body: NestedScrollView(
        // body: WebView(
        //   initialUrl: Uri.dataFromString(
        //     post.content ?? "",
        //     mimeType: 'text/html',
        //     encoding: utf8,
        //   ).toString(),
        // ),
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Html(data: post.content),
          ),
        ),
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              iconTheme: const IconThemeData(color: Colors.white),
              backgroundColor: Colors.red[900],
              expandedHeight: MediaQuery.of(context).size.height / 5,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  post.subtitle,
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            ),
          ];
        },
      ),

      bottomNavigationBar: BottomAppBar(
        child: IconButton(
          icon: const Icon(Icons.share),
          onPressed: () {
            Share.share(post.content.parseHtmlString().appendSignature(),
                subject: post.subtitle);
          },
        ),
      ),
    );
  }
}

extension on String {
  String parseHtmlString() {
    final document = parse(this);
    final String parsedString = parse(document.body.text).documentElement.text;
    return parsedString;
  }

  String appendSignature() {
    final newString = this +
        """
Essayez l'application sur Android : https://play.google.com/store/apps/details?id=com.semag.app_pym
Ou essayez l'application sur iOS : https://apps.apple.com/app/idNOMBRE
"""; // TODO: Better link
    return newString;
  }
}
