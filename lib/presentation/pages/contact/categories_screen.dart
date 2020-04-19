import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/presentation/pages/contact/contact_types_of_categorie_page.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';

class ContactTypeCategoriesScreen extends StatelessWidget {
  final List<Categorie> categories;

  const ContactTypeCategoriesScreen(this.categories);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _breakpoint = Breakpoint.fromConstraints(constraints);
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (_breakpoint.columns / 8).ceil(),
            childAspectRatio: 4 / 1,
          ),
          itemCount: categories.length,
          itemBuilder: (context, id) {
            return ContactTypeCategorieCard(categories[id]);
          },
        );
      },
    );
  }
}

class ContactTypeCategorieCard extends StatelessWidget {
  final Categorie categorie;

  const ContactTypeCategorieCard(this.categorie);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: InkWell(
          highlightColor:
              (categorie.primary_color ?? Colors.black).withAlpha(20),
          splashColor: (categorie.primary_color ?? Colors.black).withAlpha(20),
          onTap: () {
            if (categorie.action.html_url != null &&
                categorie.action.html_url.isNotEmpty) {
              UrlLauncherUtils.launch(categorie.action.html_url);
            } else {
              Navigator.of(context).push<void>(MaterialPageRoute(
                builder: (context) => ContactTypesOfCategoriePage(categorie),
              ));
            }
          },
          child: Row(
            children: <Widget>[
              if (categorie.img_url != null && categorie.img_url.isNotEmpty)
                AspectRatio(
                  aspectRatio: 2 / 3,
                  child: Image.network(
                    categorie.img_url,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              Flexible(
                child: Container(
                  padding: const EdgeInsets.all(15.0),
                  alignment: Alignment.centerLeft,
                  child: FittedBox(
                    fit: BoxFit.scaleDown,
                    child: Text(
                      categorie.name,
                      style: Theme.of(context).textTheme.headline5.apply(
                          color: categorie.primary_color ?? Colors.black),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
