import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/presentation/widgets/animations/marquee.dart';
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
      body: NestedScrollView(
        body: Scrollbar(
          child: SingleChildScrollView(
            child: Card(
              elevation: 3,
              child: Html(data: post.content),
            ),
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
                title: MarqueeWidget(
                  animationDuration:
                      Duration(milliseconds: post.subtitle.length * 100),
                  backDuration:
                      Duration(milliseconds: post.subtitle.length * 5),
                  pauseDuration: const Duration(seconds: 2),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      post.subtitle,
                      style: const TextStyle(color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
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
