import 'dart:ui';

import 'package:app_pym/core/utils/time_formatter.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/presentation/pages/actualite/post_page.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          _buildSliverAppBar(context),
          _buildSliverGrid(context)
        ],
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
      floating: false,
      snap: false,
      expandedHeight: MediaQuery.of(context).size.height / 2,
      flexibleSpace: FlexibleSpaceBar(
        background: Stack(
          fit: StackFit.expand,
          children: [
            Image.asset(
              'assets/images/actualite/bg.jpeg',
              fit: BoxFit.cover,
            )
          ],
        ),
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
        childAspectRatio: 4 / 3,
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
    return Card(
      color: Theme.of(context).brightness == Brightness.light
          ? Colors.white
          : Colors.black12,
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.title,
                  style: Theme.of(context).textTheme.headline6,
                  textAlign: TextAlign.start,
                ),
                if (post.subtitle != null)
                  Text(
                    post.subtitle,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .apply(fontSizeDelta: 4),
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
              ],
            ),
          ),
          buildCachedNetworkImage(postImage),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                _getText(post.content) ?? "",
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    .apply(fontSizeDelta: -2),
                textAlign: TextAlign.start,
                overflow: TextOverflow.fade,
              ),
            ),
          ),
          const Divider(),
          ButtonBar(
            children: [
              FlatButton(
                onPressed: () =>
                    Navigator.of(context).push<void>(MaterialPageRoute(
                  builder: (context) {
                    return PostPage(post);
                  },
                )),
                child: const Text('VOIR PLUS'),
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget buildCachedNetworkImage(String postImage) {
    if (postImage != null) {
      return Expanded(
        flex: 3,
        child: CachedNetworkImage(
          imageUrl: postImage,
          progressIndicatorBuilder: (context, url, downloadProgress) => Center(
              child:
                  CircularProgressIndicator(value: downloadProgress.progress)),
          imageBuilder: (context, imageProvider) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              ),
            );
          },
        ),
      );
    } else {
      return Container();
    }
  }

  String _getImg(String content) {
    if (content != null) {
      final html_dom.Document document = html_parser.parse(content);
      try {
        final List<html_dom.Element> elements =
            document.getElementsByTagName("img");
        if (elements.isNotEmpty) {
          final html_dom.Element element = elements.first;
          final String url = element?.attributes['src'];
          return url;
        } else {
          return null;
        }
      } catch (e) {
        print(e);
        return null;
      }
    } else {
      return null;
    }
  }

  String _getText(String content) {
    if (content != null) {
      final html_dom.Document document = html_parser.parse(content);
      try {
        final String parsedString =
            html_parser.parse(document.body.text).documentElement.text;

        return parsedString;
      } catch (e) {
        print(e);
        return null;
      }
    } else {
      return null;
    }
  }
}
