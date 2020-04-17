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
@prod
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
