import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/contact_type.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/contacts/contact_types_of_categorie/contact_types_of_categorie_bloc.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_bloc/flutter_bloc.dart';

class ContactTypesOfCategoriePage extends StatelessWidget {
  final Categorie categorie;

  const ContactTypesOfCategoriePage(this.categorie, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categorie.name),
      ),
      body: BlocProvider(
        create: (_) => sl<ContactTypesOfCategorieBloc>()
          ..add(
            ContactTypesOfCategorieEvent.fetch(categorie),
          ),
        child: BlocBuilder<ContactTypesOfCategorieBloc,
            ContactTypesOfCategorieState>(
          builder: (context, state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (d) => ContactTypesOfCategorieScreen(d),
              error: (e) => Center(
                child: Text(e.toString()),
              ),
            );
          },
        ),
      ),
    );
  }
}

class ContactTypesOfCategorieScreen extends StatelessWidget {
  final List<ContactType> contactTypes;

  const ContactTypesOfCategorieScreen(this.contactTypes, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final _breakpoint = Breakpoint.fromConstraints(constraints);
        return GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: (_breakpoint.columns / 8).ceil(),
            childAspectRatio: 5 / 2,
          ),
          itemCount: contactTypes.length,
          itemBuilder: (context, id) {
            return ContactTypeOfCategorieCard(contactTypes[id]);
          },
        );
      },
    );
  }
}

class ContactTypeOfCategorieCard extends StatelessWidget {
  final ContactType contactType;

  const ContactTypeOfCategorieCard(this.contactType, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      height: MediaQuery.of(context).size.height / 5,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: <Widget>[
            if (contactType.img_url != null && contactType.img_url.isNotEmpty)
              AspectRatio(
                aspectRatio: 2 / 3,
                child: Image.network(
                  contactType.img_url,
                  fit: BoxFit.fitHeight,
                ),
              ),
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
                                text: contactType.title + '\n',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              TextSpan(
                                text: contactType.subtitle,
                                style: Theme.of(context).textTheme.subtitle1,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Divider(),
                  ButtonBar(
                    buttonTextTheme: ButtonTextTheme.primary,
                    children: contactType.actions
                        .map((e) => ActionButton(e, contactType: contactType))
                        .toList(),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ActionButton extends StatelessWidget {
  final Action action;
  final ContactType contactType;

  const ActionButton(
    this.action, {
    Key key,
    @required this.contactType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        if (action.html_url != null && action.html_url.isNotEmpty) {
          UrlLauncherUtils.launch(action.html_url);
        }
        if (action.name?.toUpperCase() == 'WEB') {
          UrlLauncherUtils.launch(contactType.contact?.html_url);
        } else if (action.name?.toUpperCase() == 'SMS') {
          UrlLauncherUtils.launch("sms:${contactType.contact?.telephone}");
        } else if (action.name?.toUpperCase() == 'EMAIL') {
          UrlLauncherUtils.launch("mailto:${contactType.contact?.email}");
        } else if (action.name?.toUpperCase() == 'TROUVER') {
          UrlLauncherUtils.launch(
              "https://maps.google.com/?q=${contactType.contact?.address}");
        }
      },
      child: Text(action.name?.toUpperCase() ?? "Action"),
    );
  }
}
