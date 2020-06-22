import 'package:app_pym/domain/entities/map_pym/batiment.dart';

class CartographieConstants {
  static const latitudePYM = 43.450522;
  static const longitudePYM = 5.448041;

  static const Batiment batiment = Batiment(
    id: 0,
    nom: "Le Pôle Yvon Morandat",
    nbEtage: 0,
    description:
        "Le pôle Yvon Morandat est ancré dans l’histoire et tourné vers l’avenir.",
    accesHandicape: true,
    url: "http://www.ville-gardanne.fr/Pole-Yvon-Morandat",
    adresse: "1480 Avenue d'Arménie, 13120 Gardanne",
    latitude: latitudePYM,
    longitude: longitudePYM,
    isVisibleAR: true,
    img_url:
        "https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/Puits_Morandat.jpg/1280px-Puits_Morandat.jpg",
  );
}
