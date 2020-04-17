import 'package:app_pym/core/utils/time_formatter.dart';
import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart' as html_dom;
import 'package:html/parser.dart' as html_parser;

class ActualiteScreen extends StatelessWidget {
  final List<Post> posts;

  const ActualiteScreen(this.posts, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            snap: false,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    'assets/images/actualite/Puits_Morandat.jpg',
                    fit: BoxFit.cover,
                  )
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => PostCard(posts[index]),
              childCount: posts.length,
            ),
          )
        ],
      ),
    );
  }
}

class PostCard extends StatelessWidget {
  final Post post;

  const PostCard(this.post, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final postImage = _getImg(post.content);
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        color: Colors.transparent,
        elevation: 0,
        shape: RoundedRectangleBorder(
          side: BorderSide(
              color: Theme.of(context).brightness == Brightness.light
                  ? Colors.black26
                  : Colors.white12,
              width: 1.0),
          borderRadius: BorderRadius.circular(4.0),
        ),
        child: InkWell(
          onTap: () => UrlLauncherUtils.launch(post.url),
          child: Container(
            height: MediaQuery.of(context).size.height / 4,
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          post.title,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.start,
                        ),
                        Text(
                          post.published.formatTime(),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .apply(fontSizeDelta: -4),
                          textAlign: TextAlign.start,
                        ),
                        const Divider(color: Colors.transparent),
                        Text(
                          _getText(post.content),
                          style: Theme.of(context)
                              .textTheme
                              .subtitle1
                              .apply(fontSizeDelta: -2),
                          textAlign: TextAlign.start,
                          maxLines: 2,
                        ),
                      ],
                    ),
                  ),
                ),
                if (postImage != null)
                  Image.network(
                    postImage,
                    width: MediaQuery.of(context).size.width / 4,
                    fit: BoxFit.contain,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  String _getImg(String content) {
    final html_dom.Document document = html_parser.parse(content);
    try {
      final html_dom.Element element =
          document.getElementsByTagName("img")?.first;
      final String url = element?.attributes['src'];
      return url;
    } catch (_) {
      return null;
    }
  }

  String _getText(String content) {
    final html_dom.Document document = html_parser.parse(content);
    try {
      final String parsedString =
          html_parser.parse(document.body.text).documentElement.text;

      return parsedString;
    } catch (_) {
      return null;
    }
  }
}
