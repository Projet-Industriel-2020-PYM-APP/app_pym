import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:flutter/services.dart' show rootBundle;

class CGUPage extends StatelessWidget {
  const CGUPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Conditions générales d'utilisation")),
      body: FutureBuilder<String>(
        future: rootBundle.loadString('assets/markdown/cgu.md'),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Markdown(data: snapshot.data);
          } else {
            return const CircularProgressIndicator();
          }
        },
      ),
    );
  }
}
