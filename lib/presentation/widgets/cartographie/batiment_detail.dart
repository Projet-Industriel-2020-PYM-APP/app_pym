import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/batiment/batiment_bloc.dart';
import 'package:app_pym/presentation/widgets/cartographie/entreprise_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BatimentDetailDisplay extends StatelessWidget {
  final int idBatiment;

  const BatimentDetailDisplay({@required this.idBatiment, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<BatimentBloc>(
      create: (context) =>
          sl<BatimentBloc>()..add(GetBatimentDetailEvent(idBatiment)),
      child: BlocBuilder<BatimentBloc, BatimentState>(
        builder: (context, state) {
          if (state is BatimentUnloaded || state is BatimentLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is BatimentLoaded) {
            return BatimentDetailContent(state.batiment);
          } else if (state is BatimentError) {
            return ListTile(
              title: Text(
                state.error.toString(),
                style: Theme.of(context).textTheme.bodyText1.apply(
                      color: Theme.of(context).errorColor,
                    ),
              ),
            );
          } else {
            return null;
          }
        },
      ),
    );
  }
}

class BatimentDetailContent extends StatelessWidget {
  final Batiment batiment;

  const BatimentDetailContent(this.batiment, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      // mainAxisAlignment: MainAxisAlignment.center,
      alignment: WrapAlignment.start,
      children: <Widget>[
        ListTile(
          title: Text(
            batiment.nom,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
        const Divider(),
        ListTile(title: Text(batiment.description)),
        ListTile(title: Text("Adresse: ${batiment.adresse}")),
        ListTile(title: Text("Nombre d'étages: ${batiment.nbEtage}")),
        ListTile(
            title: Text(
                "Accès handicapés: ${batiment.accesHandicape ? "oui" : "non"}")),
        const Divider(),
        EntrepriseListDisplay(idBatiment: batiment.id),
      ],
    );
  }
}
