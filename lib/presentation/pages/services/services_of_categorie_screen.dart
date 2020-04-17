import 'package:flutter/material.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';

class ServicesOfCategorieScreen extends StatelessWidget {
  final Categorie categorie;
  final List<Service> services;

  const ServicesOfCategorieScreen(this.services, this.categorie);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: services.length,
      itemBuilder: (context, id) {
        return ServiceCard(services[id]);
      },
    );
  }
}

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard(this.service);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        child: Column(
          children: <Widget>[
            Text(service.title),
            ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: service.actions.length,
                itemBuilder: (context, actionId) {
                  return FlatButton(
                    onPressed: () {
                      //go to action
                    },
                    child: Text(service.actions[actionId].name),
                  );
                })
          ],
        ),
      ),
    );
  }
}
