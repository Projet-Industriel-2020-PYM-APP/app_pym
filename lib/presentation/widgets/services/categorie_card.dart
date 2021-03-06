import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/presentation/pages/services/services_of_categorie_screen.dart';
import 'package:flutter/material.dart';

class CategorieCard extends StatelessWidget {
  final ServiceCategorie categorie;

  const CategorieCard(this.categorie);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: categorie.img_url != null && categorie.img_url.isNotEmpty
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
    );
  }
}
