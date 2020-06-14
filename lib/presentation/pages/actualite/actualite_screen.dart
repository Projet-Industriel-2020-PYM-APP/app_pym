import 'dart:ui';

import 'package:app_pym/core/routes/routes.dart';
import 'package:app_pym/domain/entities/app_pym/post.dart';
import 'package:app_pym/presentation/blocs/authentication/authentication/authentication_bloc.dart';
import 'package:app_pym/presentation/widgets/actualite/post_card.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ActualiteScreen extends StatefulWidget {
  final List<Post> posts;

  const ActualiteScreen(this.posts, {Key key}) : super(key: key);

  @override
  _ActualiteScreenState createState() => _ActualiteScreenState();
}

class _ActualiteScreenState extends State<ActualiteScreen> {
  List<Post> filteredPosts = [];
  String filter = "";
  FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildSearchBar(context),
        Expanded(
          child: GestureDetector(
            onTap: focusNode.unfocus,
            child: Scrollbar(
              child: CustomScrollView(
                physics: const BouncingScrollPhysics(),
                slivers: <Widget>[
                  _buildSliverAppBar(context),
                  _buildSliverGrid(context)
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    filteredPosts = widget.posts;
    focusNode = FocusNode();
    super.initState();
  }

  Widget _buildSearchBar(BuildContext context) {
    return AppBar(
      leading: Center(
        child: BlocBuilder<AuthenticationBloc, AuthenticationState>(
          builder: (context, state) {
            return IconButton(
              icon: Icon(
                Icons.account_circle,
                color: state is Authenticated
                    ? Colors.green
                    : Theme.of(context).iconTheme.color,
              ),
              onPressed: () {
                if (state is! Authenticated) {
                  Navigator.of(context).pushNamed(RoutePaths.login).then(
                      (value) => context
                          .bloc<AuthenticationBloc>()
                          .add(const AuthenticationEvent.refresh()));
                } else {
                  context
                      .bloc<AuthenticationBloc>()
                      .add(const AuthenticationEvent.refresh());
                }
              },
            );
          },
        ),
      ),
      title: TextField(
        focusNode: focusNode,
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          filled: true,
          border: InputBorder.none,
          focusedBorder: const UnderlineInputBorder(),
          suffixIcon: IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              focusNode.unfocus();
            },
          ),
        ),
        onChanged: _onInput,
      ),
    );
  }

  SliverAppBar _buildSliverAppBar(BuildContext context) {
    return SliverAppBar(
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

  Widget _buildSliverGrid(BuildContext context) {
    final _breakpoint = Breakpoint.fromMediaQuery(context);
    if (filteredPosts.isNotEmpty) {
      return SliverGrid(
        delegate: SliverChildBuilderDelegate(
          (context, index) => PostCard(filteredPosts[index]),
          childCount: filteredPosts.length,
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (_breakpoint.columns / 6).ceil(),
          childAspectRatio: 4 / 3,
        ),
      );
    } else {
      return SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              child: Text(
                "Aucun article trouvé avec : '$filter'",
                style: Theme.of(context).textTheme.bodyText1,
              ),
            );
          },
          childCount: 1,
        ),
      );
    }
  }

  void _onInput(String value) {
    setState(() {
      filter = value.toLowerCase();
      final keywords = filter.split(' ');
      filteredPosts = widget.posts.where((post) {
        if (value == null || value.isEmpty) {
          return true;
        }
        return keywords.every((keyword) {
          return (post.title ?? "").toLowerCase().contains(keyword) ||
              (post.subtitle ?? "").toLowerCase().contains(keyword) ||
              (post.tags ?? []).any((element) => element.contains(keyword));
        });
      }).toList();
    });
  }
}
