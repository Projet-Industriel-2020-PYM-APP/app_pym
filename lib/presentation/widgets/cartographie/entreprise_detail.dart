import 'package:app_pym/core/utils/url_launcher_utils.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class EntrepriseListDisplay extends StatelessWidget {
  final List<Entreprise> entreprises;

  const EntrepriseListDisplay({@required this.entreprises, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (entreprises != null) {
      final children = entreprises.map((e) => EntrepriseTile(e)).toList();
      return ListView(
        children: children,
      );
    } else {
      return Container();
    }
  }
}

class EntrepriseTile extends StatelessWidget {
  final Entreprise entreprise;

  const EntrepriseTile(this.entreprise, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: entreprise.logo != null && entreprise.logo.isNotEmpty
          ? CachedNetworkImage(
              imageUrl:
                  "https://map-pym.com/sharedfolder/logos/${entreprise.logo}",
              width: 100,
              height: 100,
              errorWidget: (context, url, dynamic error) {
                print(error);
                return const Icon(Icons.error);
              },
            )
          : null,
      title: Text(
        entreprise.nom ?? "",
        style: Theme.of(context).textTheme.bodyText2,
      ),
      onTap: () => showModalBottomSheet<void>(
        context: context,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
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
        if (entreprise.logo != null && entreprise.logo.isNotEmpty)
          CachedNetworkImage(
            imageUrl:
                "https://map-pym.com/sharedfolder/logos/${entreprise.logo}",
            height: 100,
            width: 200,
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
          )
        else
          Container(),
        ListTile(
          title: Text(
            entreprise.nom ?? "NO_NAME_ERROR",
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),
        ),
        const Divider(),
        ListTile(
          title: Text("Adresse e-mail: ${entreprise.mail ?? ""}"),
          onTap: () =>
              UrlLauncherUtils.launch("mailto:${entreprise.mail ?? ""}"),
        ),
        ListTile(
          title: Text("Site internet: ${entreprise.site_internet ?? ""}"),
          onTap: () => UrlLauncherUtils.launch(
              Uri.parse(entreprise.site_internet ?? "").toString()),
        ),
        ListTile(
            title: Text("Nombre de salariés: ${entreprise.nb_salaries ?? ""}")),
        ListTile(
          title: Text("Numéro de téléphone: ${entreprise.telephone ?? ""}"),
          onTap: () =>
              UrlLauncherUtils.launch("sms:${entreprise.telephone ?? ""}"),
        ),
      ],
    );
  }
}
