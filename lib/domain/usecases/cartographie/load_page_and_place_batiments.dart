import 'dart:convert';
import 'dart:math' as math;

import 'package:app_pym/core/constants/cartographie.dart';
import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/entreprise_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

part 'load_page_and_place_batiments.freezed.dart';

@freezed
abstract class LoadPageAndPlaceBatimentParams
    with _$LoadPageAndPlaceBatimentParams {
  const factory LoadPageAndPlaceBatimentParams({
    @required num bearingBetweenCameraAndNorth,
    @required UnityWidgetController controller,
  }) = _LoadPageAndPlaceBatimentParams;
}

@prod
@lazySingleton
class LoadPageAndPlaceBatiments
    extends Usecase<Future<Position>, LoadPageAndPlaceBatimentParams> {
  final GeolocatorDevice geolocatorDevice;
  final BatimentRepository batimentRepository;
  final EntrepriseRepository entrepriseRepository;

  const LoadPageAndPlaceBatiments({
    @required this.geolocatorDevice,
    @required this.batimentRepository,
    @required this.entrepriseRepository,
  });

  @override
  Future<Position> call(LoadPageAndPlaceBatimentParams params) async {
    final num bearingBetweenCameraAndNorth =
        params.bearingBetweenCameraAndNorth * math.pi / 180;

    final List<Entreprise> entreprises = await entrepriseRepository.fetchAll();

    final UnityWidgetController controller = params.controller;

    // Throttle to avoid spam
    final Stream<Position> positions = geolocatorDevice.positions;

    final position = positions.first;
    final num latitude = (await position).latitude;
    final num longitude = (await position).longitude;

    if (geolocatorDevice.distanceBetween(
          latitude,
          longitude,
          CartographieConstants.latitudePYM,
          CartographieConstants.longitudePYM,
        ) <
        500) {
      await _placeBatiments(
        latitude,
        longitude,
        bearingBetweenCameraAndNorth,
        entreprises,
        controller,
      );
    } else {
      _placePYM(
        latitude,
        longitude,
        bearingBetweenCameraAndNorth,
        entreprises,
        controller,
      );
    }

    return position;
  }

  Future<void> _placeBatiments(
    num latitude,
    num longitude,
    num bearingBetweenCameraAndNorth,
    List<Entreprise> entreprises,
    UnityWidgetController controller,
  ) async {
    final Future<List<Batiment>> batiments = batimentRepository.fetchAll();

    for (final batiment
        in (await batiments).where((batiment) => batiment.isVisibleAR)) {
      final entreprisesOfBatiment = entreprises
          .where((entreprise) => entreprise.idBatiment == batiment.id)
          .toList();
      final num bearingBetweenCameraAndBatiment =
          geolocatorDevice.bearingBetween(
        latitude,
        longitude,
        batiment.latitude,
        batiment.longitude,
      );

      final num distanceBetweenCameraAndBatiment =
          geolocatorDevice.distanceBetween(
        latitude,
        longitude,
        batiment.latitude,
        batiment.longitude,
      );

      // Calculate position in arcore/arkit axis
      final Vector3 vect = Vector3(
        -2 *
            math.sin(
                bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
        0,
        -2 *
            math.cos(
                bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
      );

      controller.spawnBatiment(
        vect,
        batiment: batiment,
        entreprises: entreprisesOfBatiment,
        distance: distanceBetweenCameraAndBatiment,
      );
    }
  }

  void _placePYM(
    num latitude,
    num longitude,
    num bearingBetweenCameraAndNorth,
    List<Entreprise> entreprises,
    UnityWidgetController controller,
  ) {
    final num bearingBetweenCameraAndPYM = geolocatorDevice.bearingBetween(
      latitude,
      longitude,
      CartographieConstants.latitudePYM,
      CartographieConstants.longitudePYM,
    );

    final num distanceBetweenCameraAndPYM = geolocatorDevice.distanceBetween(
      latitude,
      longitude,
      CartographieConstants.latitudePYM,
      CartographieConstants.longitudePYM,
    );

    // Calculate position in arcore/arkit axis
    final Vector3 vect = Vector3(
      -2 * math.sin(bearingBetweenCameraAndNorth - bearingBetweenCameraAndPYM),
      0,
      -2 * math.cos(bearingBetweenCameraAndNorth - bearingBetweenCameraAndPYM),
    );

    controller.spawnBatiment(
      vect,
      batiment: CartographieConstants.batiment,
      entreprises: entreprises,
      distance: distanceBetweenCameraAndPYM,
    );
  }
}

extension on UnityWidgetController {
  void spawnBatiment(
    Vector3 vect, {
    @required Batiment batiment,
    @required List<Entreprise> entreprises,
    @required num distance,
  }) {
    final Map<String, dynamic> data = <String, dynamic>{
      'position': <String, double>{
        'x': vect.x,
        'y': vect.y,
        'z': -vect.z, // Only for Unity axis
      },
      'color': <String, int>{
        'r': Colors.white.red,
        'g': Colors.white.green,
        'b': Colors.white.blue,
      },
      'batiment': <String, dynamic>{
        'id': batiment.id,
        'nom': batiment.nom ?? "",
        'nbEtage': batiment.nbEtage ?? 0,
        'description': batiment.description ?? "",
        'accesHandicape': batiment.accesHandicape ?? false,
        'url': batiment.url ?? "",
        'adresse': batiment.adresse ?? "",
        'latitude': batiment.latitude ?? 0.0,
        'longitude': batiment.longitude ?? 0.0,
        'isVisibleAR': batiment.isVisibleAR ?? true,
        'entreprises': entreprises.map((entreprise) {
          return {
            'id': entreprise.id,
            'nom': entreprise.nom ?? "",
            'site_internet': entreprise.site_internet ?? "",
            'nb_salaries': entreprise.nb_salaries ?? 0,
            'telephone': entreprise.telephone ?? "",
            'mail': entreprise.mail ?? "",
            'logo': entreprise.logo ?? "",
            'idBatiment': entreprise.idBatiment ?? 0,
          };
        }).toList(),
      },
      'distance': distance,
    };

    this.postMessage(
      'BatimentSpawner',
      'FlutterSpawn',
      json.encode(data),
    );
  }
}
