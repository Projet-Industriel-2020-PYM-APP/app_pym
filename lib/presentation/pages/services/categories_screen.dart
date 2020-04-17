import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:flutter/material.dart';

class CategoriesSreen extends StatelessWidget {
  final List<Categorie> categories;

  const CategoriesSreen(this.categories);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (context, id) {
          return CategorieCard(categories[id]);
        });
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
            Text(categorie.name),
            FlatButton(
              onPressed: null, //go to services of category
              child: Text(categorie.action.name),
            ),
          ],
        ),
      ),
    );
  }
}
