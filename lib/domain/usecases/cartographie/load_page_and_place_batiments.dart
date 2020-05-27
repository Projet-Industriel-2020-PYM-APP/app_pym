import 'dart:convert';
import 'dart:math' as math;

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';
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

  const LoadPageAndPlaceBatiments({
    @required this.geolocatorDevice,
    @required this.batimentRepository,
  });

  @override
  Future<Position> call(LoadPageAndPlaceBatimentParams params) async {
    final num bearingBetweenCameraAndNorth =
        params.bearingBetweenCameraAndNorth * math.pi / 180;
    final Future<List<Batiment>> batiments = batimentRepository.fetchAll();
    final UnityWidgetController controller = params.controller;

    // Throttle to avoid spam
    final Stream<Position> positions = geolocatorDevice.positions;

    final position = positions.first;
    final num latitude = (await position).latitude;
    final num longitude = (await position).longitude;

    for (final batiment in await batiments) {
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
        -math.sin(
            bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
        0,
        -math.cos(
            bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
      );

      controller.spawnBatiment(
        vect,
        batiment: batiment,
        distance: distanceBetweenCameraAndBatiment,
      );
    }
    controller.spawnCompass(bearingBetweenCameraAndNorth);

    return position;
  }
}

extension on UnityWidgetController {
  void spawnBatiment(
    Vector3 vect, {
    @required Batiment batiment,
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
      'data': <String, dynamic>{
        'id': batiment.id,
        'text': batiment.nom,
      },
      'distance': distance,
    };

    this.postMessage(
      'BatimentSpawner',
      'FlutterSpawn',
      json.encode(data),
    );
  }

  void spawnCompass(
    num bearingBetweenCameraAndNorth,
  ) {
    this._spawnCompassUnit(
      Vector3(
        -math.sin(bearingBetweenCameraAndNorth),
        0,
        -math.cos(bearingBetweenCameraAndNorth),
      ),
      color: Colors.red,
      text: "N",
    );

    this._spawnCompassUnit(
      Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi / 2),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi / 2),
      ),
      color: Colors.green[100],
      text: "W",
    );

    this._spawnCompassUnit(
      Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi),
      ),
      color: Colors.blue,
      text: "S",
    );

    this._spawnCompassUnit(
      Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi * 3 / 2),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi * 3 / 2),
      ),
      color: Colors.green[100],
      text: "E",
    );
  }

  void _spawnCompassUnit(
    Vector3 vect, {
    @required Color color,
    @required String text,
  }) {
    final Map<String, dynamic> data = <String, dynamic>{
      'position': <String, double>{
        'x': vect.x,
        'y': vect.y,
        'z': -vect.z, // Only for Unity axis
      },
      'color': <String, int>{
        'r': color.red,
        'g': color.green,
        'b': color.blue,
      },
      'data': <String, dynamic>{
        'id': 0,
        'text': text,
      }
    };

    this.postMessage(
      'CompassSpawner',
      'FlutterSpawn',
      json.encode(data),
    );
  }
}
