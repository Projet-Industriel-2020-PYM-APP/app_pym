import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/presentation/pages/services/services_of_categorie_screen.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Categorie> categories;

  const CategoriesScreen(this.categories);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _breakpoint = Breakpoint.fromConstraints(constraints);
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (_breakpoint.columns / 8).ceil(),
            crossAxisSpacing: _breakpoint.gutters,
            mainAxisSpacing: _breakpoint.gutters,
            childAspectRatio: 5 / 2,
          ),
          itemCount: categories.length,
          itemBuilder: (context, id) {
            return CategorieCard(categories[id]);
          },
        );
      },
    );
  }
}

class CategorieCard extends StatelessWidget {
  final Categorie categorie;

  const CategorieCard(this.categorie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image:
                      categorie.img_url != null && categorie.img_url.isNotEmpty
                          ? DecorationImage(
                              image: NetworkImage(categorie.img_url),
                              fit: BoxFit.cover,
                            )
                          : null,
                  color:
                      categorie.primary_color ?? Theme.of(context).primaryColor,
                ),
                padding: const EdgeInsets.all(20.0),
                alignment: Alignment.bottomLeft,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: Text(
                    categorie.name,
                    style: Theme.of(context)
                        .textTheme
                        .headline5
                        .apply(color: Colors.white),
                  ),
                ),
              ),
            ),
            ButtonBar(
              buttonTextTheme: ButtonTextTheme.primary,
              children: <Widget>[
                FlatButton(
                  textColor:
                      categorie.primary_color ?? Theme.of(context).primaryColor,
                  onPressed: () {
                    Navigator.of(context).push<void>(MaterialPageRoute(
                      builder: (context) => ServicesOfCategoriePage(categorie),
                    ));
                  },
                  child: Text(
                    categorie.action.name.toUpperCase(),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
