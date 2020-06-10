import 'dart:collection';

import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:dartx/dartx.dart';

/// Implementation of [MapPymRemoteDataSource]
///
/// This is injected to the dev env using [DevRegisterModule].
class MapPymRemoteDataSourceDevImpl implements MapPymRemoteDataSource {
  final List<ContactModel> fakeContactsDB = [
    ContactModel.fromJson(<String, dynamic>{
      "id": 2,
      "nom": "FORTUIT",
      "prenom": "Nicolas",
      "telephone": "04 42 65 77 20",
      "mail": "nicolas.fortuit@semag13.com",
      "idEntreprise": 13
    }),
  ];

  final SplayTreeSet<BookingModel> fakeBookingsDB =
      SplayTreeSet<BookingModel>((a, b) => a.id - b.id)
        ..addAll([
          BookingModel(
            id: 0,
            title: 'Réservation 2000 -> now+1d',
            start_date: DateTime(2000),
            end_date: DateTime.now() + 1.days,
            service_id: 0,
          ),
          BookingModel(
            id: 1,
            title: 'Réservation now+1d -> now+1w',
            start_date: DateTime.now() + 1.days,
            end_date: DateTime.now() + 1.weeks,
            service_id: 0,
          ),
          BookingModel(
            id: 2,
            title: 'Réservation now-2d -> now-1d',
            start_date: DateTime.now() - 2.days,
            end_date: DateTime.now() - 1.days,
            service_id: 0,
          ),
          BookingModel(
            id: 3,
            title: 'Réservation now+1h -> now+2h',
            start_date: DateTime.now() + 1.hours,
            end_date: DateTime.now() + 2.hours,
            service_id: 0,
          ),
        ]);

  final List<BatimentModel> fakeBatimentDB = [
    const BatimentModel(
      id: 0,
      accesHandicape: false,
      adresse: "879 Route de Mimet",
      description:
          "Maison des Eleves habitant Illu-Mines, Minitel et bien d'autres assos que j'ai la flemme d'écrire.",
      nbEtage: 2,
      nom: "Maison des élèves",
      url: "https://myismin.emse.fr/",
      latitude: 43.445993,
      longitude: 5.480570,
    ),
    const BatimentModel(
      id: 1,
      accesHandicape: false,
      adresse: "879 Route de Mimet",
      description: "Batiment 1 Description",
      nbEtage: 2,
      nom: "Batiment 1",
      url: "https://myismin.emse.fr/",
      latitude: 43.446301,
      longitude: 5.480492,
    ),
    const BatimentModel(
      id: 2,
      accesHandicape: false,
      adresse: "879 Route de Mimet",
      description: "Batiment 2 Chambre 2012",
      nbEtage: 2,
      nom: "Batiment 2",
      url: "https://myismin.emse.fr/",
      latitude: 43.446546,
      longitude: 5.480766,
    ),
    const BatimentModel(
      id: 3,
      accesHandicape: false,
      adresse: "879 Route de Mimet",
      description: "Batiment 3 Description",
      nbEtage: 2,
      nom: "Batiment 3",
      url: "https://goo.gl/maps/wWmjWiRvoUrwgsx2A",
      latitude: 43.446197,
      longitude: 5.481150,
    ),
  ];
  final List<ContactCategorieModel> fakeContactCategorieDB = [
    ContactCategorieModel.fromJson(<String, dynamic>{
      'id': 0,
      'address': 'address',
      'contact_id': 2,
      'img_url': 'https://cdn.eso.org/images/thumb300y/eso1907a.jpg',
      'subtitle': '04 42 65 77 20\nnicolas.fortuit@semag13.com',
      'title': 'Nicolas FORTUIT',
      'actions': [
        {
          'html_url': null,
          'name': "SMS",
        },
        {
          'html_url': null,
          'name': "EMAIL",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "REDIRECTION",
        },
      ],
    }),
    ContactCategorieModel.fromJson(<String, dynamic>{
      'id': 1,
      'address': 'address',
      'contact_id': 2,
      'img_url': null,
      'subtitle': 'subtitle 2',
      'title': 'title 2',
      'actions': [
        {
          'html_url': null,
          'name': "SMS",
        },
        {
          'html_url': null,
          'name': "EMAIL",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "REDIRECTION",
        },
      ],
    }),
  ];
  final List<PostModel> fakePostDB = [
    PostModel(
      id: 0,
      published: DateTime.now(),
      updated: DateTime.now(),
      tags: ["tag"],
      subtitle: "subtitle",
      url: 'https://google.fr',
      title: 'NOW',
      content:
          r"""<div class="separator" style="clear: both; text-align: center;">
</div>
<div style="margin-left: 1em; margin-right: 1em;">
</div>
<br>
<br>
<h2>
Il semblerais que le bot soit vivant.</h2>
<h4>
Notification Push FCM en fonction de Blogger ?</h4>
<div>
Tout ça en langage Go ?</div>
<div class="separator" style="clear: both; text-align: center;">
<a href="https://miro.medium.com/max/738/0*JJsCKXHlJRi1pL4t" imageanchor="1" style="margin-left: 1em; margin-right: 1em; outline-width: 0px !important; user-select: auto !important;"><img alt="miro.medium.com/max/738/0*JJsCKXHlJRi1pL4t" border="0" height="179" src="https://miro.medium.com/max/738/0*JJsCKXHlJRi1pL4t" width="320"></a></div>
<div class="separator" style="clear: both; text-align: center;">
</div>
<h4 style="margin-left: 1em; margin-right: 1em;">
</h4>
<br>
<div>
<h4>
Build sur Google Cloud Build !</h4>
<div class="separator" style="clear: both; text-align: center;">
<a href="https://miro.medium.com/max/1200/1*p6Nc3zVTadBSQDd7cXvzDw.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em; outline-width: 0px !important; user-select: auto !important;"><img alt="Creating Build Triggers in Google Cloud Container Engine" border="0" height="287" src="https://miro.medium.com/max/1200/1*p6Nc3zVTadBSQDd7cXvzDw.png" width="320"></a></div>
<h4>
Hébergé sur sur Google Cloud Run !</h4>
</div>
<div>
</div>
<div>
<br></div>
<div class="separator" style="clear: both; text-align: center;">
<a href="https://miro.medium.com/max/562/1*gYGvyOHloJ2JKO8MX3fYAw.png" imageanchor="1" style="margin-left: 1em; margin-right: 1em;"><img alt="How to Auto Deploy an App to Google Cloud Run - Better Programming ..." border="0" height="180" src="https://miro.medium.com/max/562/1*gYGvyOHloJ2JKO8MX3fYAw.png" width="200"></a></div>""",
    ),
  ];
  final List<ServiceCategorieModel> fakeServiceCategorieDB = [
    ServiceCategorieModel.fromJson(<String, dynamic>{
      'id': 0,
      'action': {
        'html_url': null,
        'name': 'Voir plus',
      },
      'img_url':
          'https://s.ftcdn.net/v2013/pics/all/curated/RKyaEDwp8J7JKeZWQPuOVWvkUjGQfpCx_cover_580.jpg',
      'name': 'Restaurants',
      'primary_color': '#039be5',
    }),
    ServiceCategorieModel.fromJson(<String, dynamic>{
      'id': 1,
      'action': {
        'html_url': null,
        'name': 'Voir les salles',
      },
      'img_url': null,
      'name': 'Salles de conférences',
      'primary_color': '#f9a825',
    }),
    ServiceCategorieModel.fromJson(<String, dynamic>{
      'id': 2,
      'action': {
        'html_url': null,
        'name': 'Voir les salles',
      },
      'img_url': null,
      'name': 'Salles de réunions',
      'primary_color': '#e53935',
    }),
    ServiceCategorieModel.fromJson(<String, dynamic>{
      'id': 3,
      'action': {
        'html_url': 'https://www.google.fr/',
        'name': 'Voir les détails',
      },
      'img_url': null,
      'name': 'Salles de relaxation',
      'primary_color': '#e53935',
    }),
  ];
  final List<ServiceModel> fakeServiceDB = [
    ServiceModel.fromJson(<String, dynamic>{
      'id': 0,
      'title': 'Restaurant du ???',
      'categorie_id': 0,
      'subtitle': 'Sous-title lorem ipsum',
      'address': '8 Rue sur la terre au hasard',
      'img_url':
          'https://media-cdn.tripadvisor.com/media/photo-s/0e/cc/0a/dc/restaurant-chocolat.jpg',
      'actions': [
        {
          'html_url': null,
          'name': "Téléphoner",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "Réserver",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "Ouvrir la page web",
        },
      ],
    }),
    ServiceModel.fromJson(<String, dynamic>{
      'id': 1,
      'title': 'Salle 103',
      'categorie_id': 2,
      'subtitle': 'Sous-title lorem ipsum',
      'address': '8 Rue sur la terre au hasard',
      'website': 'https://bing.com',
      'telephone': '0123456789',
      'img_url': '',
      'actions': [
        {
          'html_url': null,
          'name': "Téléphoner",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "Réserver",
        },
        {
          'html_url': 'https://www.google.fr',
          'name': "Ouvrir la page web",
        },
      ],
    }),
  ];
  final List<EntrepriseModel> fakeEntrepriseDB = [
    EntrepriseModel.fromJson(<String, dynamic>{
      "id": 13,
      "nom": "SEMAG",
      "site_internet": "http:\/\/www.ville-gardanne.fr\/La-Semag",
      "nb_salaries": 15,
      "telephone": "04 42 65 77 20",
      "mail": "contact@semag13.com",
      "logo": "SEMAG.png",
      "idBatiment": 3,
    }),
    EntrepriseModel.fromJson(<String, dynamic>{
      "id": 14,
      "nom": "My Kiwi",
      "site_internet": "http:\/\/my-kiwi.fr\/",
      "nb_salaries": 10,
      "telephone": "0442424242",
      "mail": "mykiwi@contact.fr",
      "logo": "MY KIWI.png",
      "idBatiment": 2,
    }),
  ];
  final List<AppUserModel> fakeUserDB = [
    const AppUserModel(
      id: 0,
      email: 'example@example.com',
      username: 'admin',
      is_email_verified: true,
      password: 'password',
      role: 'Admin',
      token: 'devToken',
    ),
  ];

  @override
  Future<void> createBooking(BookingModel booking, {String token}) async {
    final id = fakeBookingsDB.last.id + 1;
    final newBooking = booking.copyWith(id: id);
    return fakeBookingsDB.add(newBooking);
  }

  @override
  Future<void> deleteBooking(int booking_id, {String token}) async {
    return fakeBookingsDB.removeWhere((e) => e.id == booking_id);
  }

  @override
  Future<List<BatimentModel>> fetchAllBatiment() async {
    return fakeBatimentDB;
  }

  @override
  Future<List<BookingModel>> fetchAllBookingsOf(int service_id) async {
    return fakeBookingsDB.where((e) => e.service_id == service_id).toList();
  }

  @override
  Future<List<ContactCategorieModel>> fetchAllContactCategories() async {
    return fakeContactCategorieDB;
  }

  @override
  Future<List<PostModel>> fetchAllPosts() async {
    return fakePostDB;
  }

  @override
  Future<List<ServiceCategorieModel>> fetchAllServiceCategories() async {
    return fakeServiceCategorieDB;
  }

  @override
  Future<BatimentModel> fetchBatiment(int id) async {
    return fakeBatimentDB.firstWhere((e) => e.id == id);
  }

  @override
  Future<ContactModel> fetchContact(int id) async {
    return fakeContactsDB.firstWhere((e) => e.id == id);
  }

  @override
  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(
      int idBatiment) async {
    return fakeEntrepriseDB.where((e) => e.idBatiment == idBatiment).toList();
  }

  @override
  Future<List<ServiceModel>> fetchServicesOf(int categorie_id) async {
    return fakeServiceDB.where((e) => e.categorie_id == categorie_id).toList();
  }

  @override
  Future<AppUserModel> fetchUser(String token) async {
    if (token != null) {
      return fakeUserDB.first;
    } else {
      return null;
    }
  }

  @override
  Future<void> updateBooking(BookingModel booking, {String token}) async {
    final oldBooking = fakeBookingsDB.firstWhere((e) => e.id == booking.id);
    final newBooking = oldBooking.copyWith(
      start_date: booking.start_date ?? oldBooking.start_date,
      end_date: booking.end_date ?? oldBooking.end_date,
      title: booking.title ?? oldBooking.title,
    );

    fakeBookingsDB.remove(oldBooking);
    fakeBookingsDB.add(newBooking);
  }
}
