import 'dart:convert';
import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:injectable/injectable.dart';

abstract class MapPymRemoteDataSource {
  Future<void> createBooking(BookingModel booking, {@required String token});

  Future<void> deleteBooking(int booking_id, {@required String token});

  Future<List<BatimentModel>> fetchAllBatiment();

  /// Récupère toute les réservations du [service_id]
  Future<List<BookingModel>> fetchAllBookingsOf(int service_id);

  /// Retourne les catégories de contact_type
  Future<List<ContactCategorieModel>> fetchAllContactCategories();

  /// Récupère les posts du fil d'actualité
  Future<List<PostModel>> fetchAllPosts();

  /// Retourne les catégories de services
  Future<List<ServiceCategorieModel>> fetchAllServiceCategories();

  Future<BatimentModel> fetchBatiment(int id);

  Future<ContactModel> fetchContact(int id);

  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(int idBatiment);

  /// Retourne les services d'une catégorie
  Future<List<ServiceModel>> fetchServicesOf(int categorie_id);

  /// Récupère un utilisateur
  Future<AppUserModel> fetchUser(String token);

  /// Met à jour un utilisateur
  Future<void> setUserData(AppUserModel user);

  Future<void> updateBooking(BookingModel booking, {@required String token});
}

@RegisterAs(MapPymRemoteDataSource)
@prod
@lazySingleton
@injectable
class MapPymRemoteDataSourceImpl implements MapPymRemoteDataSource {
  final http.Client client;

  const MapPymRemoteDataSourceImpl({@required this.client});

  @override
  Future<void> createBooking(BookingModel booking, {String token}) async {
    final data = json.encode(booking.toJson());
    final response = await client.post(
      'https://admin.map-pym.com/api/bookings/ajouter',
      headers: {
        HttpHeaders.authorizationHeader: "Bearing ${token}",
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: data,
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException(
          'Failed to create booking : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<void> deleteBooking(int booking_id, {String token}) async {
    final response = await client.delete(
      'https://admin.map-pym.com/api/bookings/${booking_id}/supprimer',
      headers: {
        HttpHeaders.authorizationHeader: "Bearing ${token}",
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException(
          'Failed to delete booking : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<BatimentModel>> fetchAllBatiment() async {
    final response =
        await client.get('https://admin.map-pym.com/api/batiments');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              BatimentModel.fromJson(data as Map<String, dynamic>))
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load batiments : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<BookingModel>> fetchAllBookingsOf(int service_id) async {
    final response = await client.get('https://admin.map-pym.com/api/bookings');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              BookingModel.fromJson(data as Map<String, dynamic>))
          ?.where((e) => e.service_id == service_id)
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load bookings of service ${service_id} : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<ContactCategorieModel>> fetchAllContactCategories() async {
    final response =
        await client.get('https://admin.map-pym.com/api/contact_categories');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              ContactCategorieModel.fromJson(data as Map<String, dynamic>))
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load categorie : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<PostModel>> fetchAllPosts() async {
    final response = await client.get('https://admin.map-pym.com/api/posts');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              PostModel.fromJson(data as Map<String, dynamic>))
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load Posts : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<ServiceCategorieModel>> fetchAllServiceCategories() async {
    final response =
        await client.get('https://admin.map-pym.com/api/service_categories');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              ServiceCategorieModel.fromJson(data as Map<String, dynamic>))
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load categorie : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<BatimentModel> fetchBatiment(int id) async {
    final response =
        await client.get('https://admin.map-pym.com/api/batiments');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              BatimentModel.fromJson(data as Map<String, dynamic>))
          ?.firstWhere((element) => element.id == id);
    } else {
      throw ServerException(
          'Failed to load batiments : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<ContactModel> fetchContact(int id) async {
    final response = await client.get('https://admin.map-pym.com/api/contacts');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              ContactModel.fromJson(data as Map<String, dynamic>))
          ?.firstWhere((e) => e.id == id);
    } else {
      throw ServerException(
          'Failed to fetch contact $id : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(
      int idBatiment) async {
    final response =
        await client.get('https://admin.map-pym.com/api/entreprises');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              EntrepriseModel.fromJson(data as Map<String, dynamic>))
          ?.where((element) => element.idBatiment == idBatiment)
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load entreprises : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<List<ServiceModel>> fetchServicesOf(int categorie_id) async {
    final response = await client.get('https://admin.map-pym.com/api/services');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              ServiceModel.fromJson(data as Map<String, dynamic>))
          ?.where((e) => e.categorie_id == categorie_id)
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load services of categorie ${categorie_id} : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<AppUserModel> fetchUser(String token) async {
    final response = await client.get(
      'https://admin.map-pym.com/api/user',
      headers: {HttpHeaders.authorizationHeader: "Bearing $token"},
    );

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as Map<String, dynamic>;
      return AppUserModel.fromJson(body);
    } else {
      throw ServerException(
          'Failed to load user : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<void> setUserData(AppUserModel user) async {
    final data = json.encode(user.toJson());
    final response = await client.patch(
      'https://admin.map-pym.com/api/user/${user.id}',
      headers: {
        HttpHeaders.authorizationHeader: "Bearing ${user.token}",
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: data,
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException(
          'Failed to update user : ${response.statusCode} ${response.reasonPhrase}');
    }
  }

  @override
  Future<void> updateBooking(BookingModel booking, {String token}) async {
    final data = json.encode(booking.toJson());
    final response = await client.patch(
      'https://admin.map-pym.com/api/bookings/${booking.id}/modifier',
      headers: {
        HttpHeaders.authorizationHeader: "Bearing ${token}",
        HttpHeaders.contentTypeHeader: 'application/json; charset=UTF-8',
      },
      body: data,
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException(
          'Failed to edit booking : ${response.statusCode} ${response.reasonPhrase}');
    }
  }
}
