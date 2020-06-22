import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/contact_categorie.dart';
import 'package:app_pym/domain/usecases/contacts/fetch_contact_of_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Action;

class ContactCategorieScreen extends StatelessWidget {
  final List<ContactCategorie> categories;

  const ContactCategorieScreen(this.categories, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _breakpoint = Breakpoint.fromConstraints(constraints);
        return Scrollbar(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: (_breakpoint.columns / 8).ceil(),
              childAspectRatio: 5 / 2,
            ),
            itemCount: categories.length,
            itemBuilder: (context, index) {
              return ContactCategorieCard(categories[index]);
            },
          ),
        );
      },
    );
  }
}

class ContactCategorieCard extends StatelessWidget {
  final ContactCategorie categorie;

  const ContactCategorieCard(this.categorie, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      height: MediaQuery.of(context).size.height / 5,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: <Widget>[
            if (categorie.img_url != null && categorie.img_url.isNotEmpty)
              buildImage(),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Flexible(
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      alignment: Alignment.centerLeft,
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(
                                text: categorie.title + '\n',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              TextSpan(
                                text: categorie.subtitle ?? "",
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: ButtonBar(
                      buttonTextTheme: ButtonTextTheme.primary,
                      children: categorie.actions
                          .map((e) => ActionButton(e, categorie: categorie))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AspectRatio buildImage() {
    return AspectRatio(
      aspectRatio: 2 / 3,
      child: CachedNetworkImage(
        imageUrl: categorie.img_url,
        fit: BoxFit.fitHeight,
        errorWidget: (context, url, dynamic error) {
          print(error);
          return Center(
            child: Text(error.toString()),
          );
        },
        progressIndicatorBuilder: (context, url, downloadProgress) {
          return Center(
            child: CircularProgressIndicator(
              value: downloadProgress.progress,
            ),
          );
        },
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Action action;
  final ContactCategorie categorie;

  const ActionButton(
    this.action, {
    Key key,
    @required this.categorie,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (action.html_url != null && action.html_url.isNotEmpty) {
      FlatButton(
        onPressed: () async {
          await UrlLauncherUtils.launch(action.html_url);
        },
        child: Text(action.name?.toUpperCase() ?? "Action"),
      );
    } else if (action.name != null) {
      if (action.name.toUpperCase().contains('SMS')) {
        return IconButton(
          icon: Icon(
            Icons.sms,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            final fetchContactOfCategorie = sl<FetchContactOfCategorie>();
            final contact = await fetchContactOfCategorie(categorie.contact_id);
            await UrlLauncherUtils.launch("sms:${contact?.telephone}");
          },
        );
      } else if (action.name != null &&
              action.name.toLowerCase().contains('telephone') ||
          action.name.toLowerCase().contains('téléphone')) {
        return IconButton(
          icon: Icon(
            Icons.phone,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            final fetchContactOfCategorie = sl<FetchContactOfCategorie>();
            final contact = await fetchContactOfCategorie(categorie.contact_id);
            await UrlLauncherUtils.launch("tel:${contact?.telephone}");
          },
        );
      } else if (action.name.toUpperCase().contains('MAIL')) {
        return IconButton(
          icon: Icon(
            Icons.mail,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            final fetchContactOfCategorie = sl<FetchContactOfCategorie>();
            final contact = await fetchContactOfCategorie(categorie.contact_id);
            await UrlLauncherUtils.launch("tel:${contact?.mail}");
          },
        );
      } else if (action.name.toLowerCase().contains('localise')) {
        return IconButton(
          icon: Icon(
            Icons.place,
            color: Theme.of(context).primaryColor,
          ),
          onPressed: () async {
            await UrlLauncherUtils.launch(
                'https://maps.google.com/?q=${categorie.address}');
          },
        );
      }
    }
    return Container();
  }
}
