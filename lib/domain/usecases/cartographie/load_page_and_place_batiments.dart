import 'dart:convert';
import 'dart:math' as math;

import 'package:app_pym/core/usecases/usecase.dart';
import 'package:app_pym/data/devices/geolocator_device.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_position_repository.dart';
import 'package:app_pym/domain/repositories/map_pym/batiment_repository.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';
import 'package:vector_math/vector_math_64.dart' as vector;
import 'package:rxdart/rxdart.dart';

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
@injectable
class LoadPageAndPlaceBatiment
    extends Usecase<Future<Position>, LoadPageAndPlaceBatimentParams> {
  final GeolocatorDevice geolocatorDevice;
  final BatimentPositionRepository batimentPositionRepository;
  final BatimentRepository batimentRepository;

  const LoadPageAndPlaceBatiment({
    @required this.geolocatorDevice,
    @required this.batimentPositionRepository,
    @required this.batimentRepository,
  });

  @override
  Future<Position> call(LoadPageAndPlaceBatimentParams params) async {
    final num bearingBetweenCameraAndNorth =
        params.bearingBetweenCameraAndNorth * math.pi / 180;
    final Future<List<BatimentPosition>> batimentPositions =
        batimentPositionRepository.fetchBatimentsPosition();
    final UnityWidgetController controller = params.controller;

    // Throttle to avoid spam
    final Stream<Position> positions = geolocatorDevice.positions
        .throttleTime(const Duration(milliseconds: 500));

    final position = positions.first;
    final num latitude = (await position).latitude;
    final num longitude = (await position).longitude;

    for (final batimentPosition in await batimentPositions) {
      final num bearingBetweenCameraAndBatiment =
          geolocatorDevice.bearingBetween(
        latitude,
        longitude,
        batimentPosition.latitude,
        batimentPosition.longitude,
      );

      // Calculate position in arcore/arkit axis
      final vector.Vector3 vect = vector.Vector3(
        -math.sin(
            bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
        0,
        -math.cos(
            bearingBetweenCameraAndNorth - bearingBetweenCameraAndBatiment),
      );

      final batiment =
          await batimentRepository.fetchBatiment(batimentPosition.idBatiment);

      _batimentSpawn(controller, vect, batiment: batiment);
    }
    _spawnAxis(controller, bearingBetweenCameraAndNorth);

    return position;
  }

  void _spawnAxis(
    UnityWidgetController controller,
    num bearingBetweenCameraAndNorth,
  ) {
    _compassSpawn(
      controller,
      vector.Vector3(
        -math.sin(bearingBetweenCameraAndNorth),
        0,
        -math.cos(bearingBetweenCameraAndNorth),
      ),
      color: Colors.red,
      text: "N",
    );

    _compassSpawn(
      controller,
      vector.Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi / 2),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi / 2),
      ),
      color: Colors.green[100],
      text: "W",
    );

    _compassSpawn(
      controller,
      vector.Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi),
      ),
      color: Colors.blue,
      text: "S",
    );

    _compassSpawn(
      controller,
      vector.Vector3(
        -math.sin(bearingBetweenCameraAndNorth + math.pi * 3 / 2),
        0,
        -math.cos(bearingBetweenCameraAndNorth + math.pi * 3 / 2),
      ),
      color: Colors.green[100],
      text: "E",
    );
  }

  void _batimentSpawn(
    UnityWidgetController controller,
    vector.Vector3 vect, {
    @required Batiment batiment,
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
      }
    };

    controller.postMessage(
      'BatimentSpawner',
      'FlutterSpawn',
      json.encode(data),
    );
  }

  void _compassSpawn(
    UnityWidgetController controller,
    vector.Vector3 vect, {
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

    controller.postMessage(
      'CompassSpawner',
      'FlutterSpawn',
      json.encode(data),
    );
  }
}
