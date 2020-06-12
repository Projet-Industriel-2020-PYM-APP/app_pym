import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/presentation/widgets/cartographie/entreprise_detail.dart';
import 'package:flutter/material.dart';

class BatimentDetailDisplay extends StatelessWidget {
  final Batiment batiment;
  final List<Entreprise> entreprises;

  const BatimentDetailDisplay({
    @required this.batiment,
    this.entreprises,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: ListView(
        children: <Widget>[
          ListTile(
            title: Text(
              batiment.nom ?? "",
              style: Theme.of(context).textTheme.headline5,
            ),
          ),
          const Divider(),
          ListTile(title: Text(batiment.description ?? "")),
          ListTile(title: Text("Adresse: ${batiment.adresse ?? ""}")),
          ListTile(title: Text("Nombre d'étages: ${batiment.nbEtage ?? 0}")),
          ListTile(
              title: Text(
                  "Accès handicapés: ${(batiment.accesHandicape ?? false) ? "oui" : "non"}")),
          const Divider(),
          ...entreprises.map((e) => EntrepriseTile(e)).toList(),
        ],
      ),
    );
  }
}
