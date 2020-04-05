import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/injection_container.dart';
import 'package:app_pym/presentation/blocs/cartographie/entreprise/entreprise_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EntrepriseListDisplay extends StatelessWidget {
  final int idBatiment;

  const EntrepriseListDisplay({@required this.idBatiment, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<EntrepriseBloc>(
      create: (context) =>
          sl<EntrepriseBloc>()..add(GetEntreprisesOfBatimentEvent(idBatiment)),
      child: BlocBuilder<EntrepriseBloc, EntrepriseState>(
        builder: (context, state) {
          if (state is EntrepriseUnloaded || state is EntrepriseLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is EntreprisesOfBatimentLoaded) {
            final children =
                state.entreprises.map((e) => EntrepriseTile(e)).toList();
            return Column(children: children);
          } else if (state is EntrepriseError) {
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

class EntrepriseTile extends StatelessWidget {
  final Entreprise entreprise;

  const EntrepriseTile(this.entreprise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: entreprise.logo != null
          ? Image.network(
              "https://map-pym.com/sharedfolder/logos/${entreprise.logo}",
              width: 100,
              height: 100,
            )
          : null,
      title: Text(
        entreprise.nom,
        style: Theme.of(context).textTheme.bodyText2,
      ),
      onTap: () => showModalBottomSheet<void>(
        context: context,
        builder: (context) {
          return EntrepriseDetailContent(entreprise);
        },
      ),
    );
  }
}

class EntrepriseDetailContent extends StatelessWidget {
  final Entreprise entreprise;

  const EntrepriseDetailContent(this.entreprise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      children: <Widget>[
        if (entreprise.logo != null)
          Image.network(
            "https://map-pym.com/sharedfolder/logos/${entreprise.logo}",
            height: 100,
            width: 200,
          )
        else
          Container(),
        ListTile(
          title: Text(
            entreprise.nom,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(),
        ListTile(
          title: Text("Adresse e-mail: ${entreprise.mail}"),
          onTap: () => UrlLauncherUtils.launch("mailto:${entreprise.mail}"),
        ),
        ListTile(
          title: Text("Site internet: ${entreprise.site_internet}"),
          onTap: () => UrlLauncherUtils.launch(
              Uri.parse(entreprise.site_internet).toString()),
        ),
        ListTile(title: Text("Nombre de salariés: ${entreprise.nb_salaries}")),
        ListTile(
          title: Text("Numéro de téléphone: ${entreprise.telephone}"),
          onTap: () => UrlLauncherUtils.launch("sms:${entreprise.telephone}"),
        ),
      ],
    );
  }
}
