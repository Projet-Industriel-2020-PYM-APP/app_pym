import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:app_pym/presentation/pages/services/fetch_all_bookings_screen.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart' hide Action;
import 'package:flutter_bloc/flutter_bloc.dart';

class ActionButton extends StatelessWidget {
  final Action action;
  final Service service;

  const ActionButton(
    this.action, {
    Key key,
    @required this.service,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () async {
        if (action.name != null) {
          if (action.name.toLowerCase().contains('réserve')) {
            await Navigator.of(context).push<void>(
              MaterialPageRoute(
                builder: (context) => FetchAllBookingsPage(service),
              ),
            );
          } else if (action.name.toUpperCase() == 'SMS') {
            await UrlLauncherUtils.launch("sms:${service?.telephone}");
          } else if (action.name.toLowerCase().contains('téléphone') ||
              action.name.toLowerCase().contains('telephone')) {
            await UrlLauncherUtils.launch('tel:${service.telephone}');
          } else if (action.name.toLowerCase().contains('web')) {
            await UrlLauncherUtils.launch(service.website);
          } else if (action.name.toLowerCase().contains('localise')) {
            await UrlLauncherUtils.launch(
                'https://maps.google.com/?q=${service.address}');
          }
        } else if (action.html_url != null && action.html_url.isNotEmpty) {
          await UrlLauncherUtils.launch(action.html_url);
        } else {
          await Navigator.of(context).push<void>(
            MaterialPageRoute(
              builder: (context) => FetchAllBookingsPage(service),
            ),
          );
        }
      },
      child: Text(action.name?.toUpperCase() ?? "Action"),
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4.0),
      height: MediaQuery.of(context).size.height / 5,
      child: Card(
        clipBehavior: Clip.antiAlias,
        child: Row(
          children: <Widget>[
            if (service.img_url != null && service.img_url.isNotEmpty)
              AspectRatio(
                aspectRatio: 2 / 3,
                child: CachedNetworkImage(
                  imageUrl: service.img_url,
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
                                text: service.title + '\n',
                                style: Theme.of(context).textTheme.headline5,
                              ),
                              TextSpan(
                                text: service.subtitle,
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
                    child: Row(
                      children: [
                        ButtonBar(
                          buttonTextTheme: ButtonTextTheme.primary,
                          children: service.actions
                              .map((e) => ActionButton(e, service: service))
                              .toList(),
                        ),
                      ],
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
}

class ServicesOfCategoriePage extends StatelessWidget {
  final ServiceCategorie categorie;

  const ServicesOfCategoriePage(this.categorie, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(categorie.name)),
      body: buildServices(context, categorie),
    );
  }

  BlocProvider<ServicesOfCategorieBloc> buildServices(
      BuildContext context, ServiceCategorie categorie) {
    return BlocProvider<ServicesOfCategorieBloc>(
      create: (_) {
        final ServicesOfCategorieBloc bloc = sl<ServicesOfCategorieBloc>();
        bloc.add(FetchServicesOfCategorieEvent(categorie));
        return bloc;
      },
      child: Center(
        child: BlocBuilder<ServicesOfCategorieBloc, ServicesOfCategorieState>(
          builder: (BuildContext context, ServicesOfCategorieState state) {
            return state.when(
              initial: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loading: () => const Center(
                child: CircularProgressIndicator(),
              ),
              loaded: (List<Service> services) =>
                  ServicesOfCategorieScreen(services, categorie),
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

class ServicesOfCategorieScreen extends StatelessWidget {
  final ServiceCategorie categorie;
  final List<Service> services;

  const ServicesOfCategorieScreen(this.services, this.categorie);

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
            itemCount: services.length,
            itemBuilder: (context, id) {
              return ServiceCard(services[id]);
            },
          ),
        );
      },
    );
  }
}
