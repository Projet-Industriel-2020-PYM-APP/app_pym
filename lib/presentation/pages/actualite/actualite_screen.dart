import 'package:app_pym/core/utils/time_formatter.dart';
import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/blogger/post.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:html/dom.dart' as html_dom;
import 'package:html/parser.dart' as html_parser;

class ActualiteScreen extends StatelessWidget {
  final List<Post> posts;

  const ActualiteScreen(this.posts, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: <Widget>[
          SliverAppBar(
            floating: false,
            snap: false,
            expandedHeight: MediaQuery.of(context).size.height / 2,
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
          _buildSliverGrid(context)
        ],
      ),
    );
  }

  SliverGrid _buildSliverGrid(BuildContext context) {
    final _breakpoint = Breakpoint.fromMediaQuery(context);
    return SliverGrid(
      delegate: SliverChildBuilderDelegate(
        (context, index) => PostCard(posts[index]),
        childCount: posts.length,
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: (_breakpoint.columns / 6).ceil(),
        childAspectRatio: 2 / 1,
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
        color: Theme.of(context).brightness == Brightness.light
            ? Colors.white
            : Colors.transparent,
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
          child: Padding(
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
                        Expanded(
                          child: Text(
                            _getText(post.content),
                            style: Theme.of(context)
                                .textTheme
                                .subtitle1
                                .apply(fontSizeDelta: -2),
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.fade,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                if (postImage != null)
                  AspectRatio(
                    aspectRatio: 2 / 3,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        postImage,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
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
