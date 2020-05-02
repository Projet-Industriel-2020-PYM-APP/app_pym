import 'dart:convert';
import 'dart:io';

import 'package:app_pym/core/error/exceptions.dart';
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
  Future<List<BatimentModel>> fetchAllBatiment();

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
}

@RegisterAs(MapPymRemoteDataSource)
@prod
@lazySingleton
@injectable
class MapPymRemoteDataSourceImpl implements MapPymRemoteDataSource {
  final http.Client client;

  const MapPymRemoteDataSourceImpl({@required this.client});

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
          'Failed to load batiments : ${response.statusCode}');
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
          'Failed to load categorie : ${response.statusCode}');
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
      throw ServerException('Failed to load Posts : ${response.statusCode}');
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
          'Failed to load categorie : ${response.statusCode}');
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
          'Failed to load batiments : ${response.statusCode}');
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
          'Failed to fetch contact $id : ${response.statusCode}');
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
          'Failed to load entreprises : ${response.statusCode}');
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
          'Failed to load services of categorie ${categorie_id} : ${response.statusCode}');
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
      throw ServerException('Failed to load user : ${response.statusCode}');
    }
  }

  @override
  Future<void> setUserData(AppUserModel user) async {
    final data = {
      'id': user.id,
      'user': user.toJson(),
    };
    final response = await client.post(
      'https://admin.map-pym.com/api/user',
      headers: {HttpHeaders.authorizationHeader: "Bearing ${user.token}"},
      body: data,
    );

    if (response.statusCode == 200) {
      return;
    } else {
      throw ServerException('Failed to update user : ${response.statusCode}');
    }
  }
}
