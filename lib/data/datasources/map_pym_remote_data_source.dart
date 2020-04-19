import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;

abstract class MapPymRemoteDataSource {
  Future<List<BatimentPositionModel>> fetchBatimentsPosition();
  Future<BatimentModel> fetchBatiment(int id);
  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(int idBatiment);
}

@RegisterAs(MapPymRemoteDataSource)
@dev
@lazySingleton
@injectable
class MapPymRemoteDataSourceImpl implements MapPymRemoteDataSource {
  final http.Client client;

  const MapPymRemoteDataSourceImpl({@required this.client});

  @override
  Future<List<BatimentPositionModel>> fetchBatimentsPosition() async {
    final response =
        await client.get('https://admin.map-pym.com/api/batiments_position');

    if (response.statusCode == 200) {
      return (json.decode(response.body) as List)
          ?.map((dynamic data) =>
              BatimentPositionModel.fromJson(data as Map<String, dynamic>))
          ?.toList();
    } else {
      throw ServerException(
          'Failed to load batiment positions : ${response.statusCode}');
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
          ?.where((element) => element.id == id)
          ?.first;
    } else {
      throw ServerException(
          'Failed to load batiments : ${response.statusCode}');
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
}

@RegisterAs(MapPymRemoteDataSource)
@prod
@lazySingleton
@injectable
class MapPymRemoteDataSourceDevImpl implements MapPymRemoteDataSource {
  final List<BatimentModel> fakeBatimentsDB = const [
    BatimentModel(
      id: 0,
      accesHandicape: false,
      adresse: "Rue",
      description: "Description",
      nbEtage: 2,
      nom: "Ma chambre",
      url: "Super",
    ),
    BatimentModel(
      id: 1,
      accesHandicape: false,
      adresse: "Rue",
      description: "Description",
      nbEtage: 2,
      nom: "Batiment 2",
      url: "Super",
    ),
    BatimentModel(
      id: 2,
      accesHandicape: false,
      adresse: "Rue",
      description: "Description",
      nbEtage: 2,
      nom: "Batiment 1",
      url: "Super",
    ),
    BatimentModel(
      id: 3,
      accesHandicape: false,
      adresse: "Rue",
      description: "Description",
      nbEtage: 2,
      nom: "IlluMine",
      url: "Super",
    ),
  ];

  final List<BatimentPositionModel> fakeBatimentsPositionDB = const [
    BatimentPositionModel(
      latitude: 43.446530,
      longitude: 5.480751,
      idBatiment: 0,
    ),
    BatimentPositionModel(
      latitude: 43.446105,
      longitude: 5.481236,
      idBatiment: 1,
    ),
    BatimentPositionModel(
      latitude: 43.446222,
      longitude: 5.480384,
      idBatiment: 2,
    ),
    BatimentPositionModel(
      latitude: 43.445887,
      longitude: 5.480349,
      idBatiment: 3,
    ),
  ];

  final List<EntrepriseModel> fakeEntrepriseDB = const [
    EntrepriseModel(
      id: 13,
      idBatiment: 0,
      logo: "SEMAG.png",
      mail: "contact@semag13.com",
      nb_salaries: 15,
      nom: 'SEMAG 1',
      site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
      telephone: "04 42 65 77 20",
    ),
    EntrepriseModel(
      id: 13,
      idBatiment: 1,
      logo: "SEMAG.png",
      mail: "contact@semag13.com",
      nb_salaries: 15,
      nom: 'SEMAG 2',
      site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
      telephone: "04 42 65 77 20",
    ),
    EntrepriseModel(
      id: 13,
      idBatiment: 2,
      logo: "SEMAG.png",
      mail: "contact@semag13.com",
      nb_salaries: 15,
      nom: 'SEMAG 3',
      site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
      telephone: "04 42 65 77 20",
    ),
    EntrepriseModel(
      id: 13,
      idBatiment: 3,
      logo: "SEMAG.png",
      mail: "contact@semag13.com",
      nb_salaries: 15,
      nom: 'SEMAG 4',
      site_internet: "http:\/\/www.ville-gardanne.fr\/La-Semag",
      telephone: "04 42 65 77 20",
    ),
  ];

  const MapPymRemoteDataSourceDevImpl();

  @override
  Future<List<BatimentPositionModel>> fetchBatimentsPosition() async {
    return fakeBatimentsPositionDB;
  }

  @override
  Future<BatimentModel> fetchBatiment(int id) async {
    return fakeBatimentsDB.where((element) => element.id == id).first;
  }

  @override
  Future<List<EntrepriseModel>> fetchEntreprisesOfBatiment(
      int idBatiment) async {
    return fakeEntrepriseDB
        .where((element) => element.idBatiment == idBatiment)
        .toList();
  }
}
