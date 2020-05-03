import 'package:app_pym/domain/entities/app_pym/service_categorie.dart';
import 'package:app_pym/injection_container.dart';
import 'package:breakpoint/breakpoint.dart';
import 'package:flutter/material.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:app_pym/presentation/blocs/services/services_of_categorie/services_of_categorie_bloc.dart';
import 'package:app_pym/presentation/pages/services/fetch_all_bookings_screen.dart';

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
                child: Image.network(
                  service.img_url,
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
                  ButtonBar(
                    buttonTextTheme: ButtonTextTheme.primary,
                    children: service.actions
                        .map((e) => FlatButton(
                              onPressed: () {
                                Navigator.of(context)
                                    .push<void>(MaterialPageRoute(
                                  builder: (context) =>
                                      FetchAllBookingsPage(service),
                                ));
                              },
                              child: Text(e.name.toUpperCase()),
                            ))
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
