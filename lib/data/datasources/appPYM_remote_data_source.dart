import 'dart:convert';

import 'package:app_pym/data/models/mobility/bus_calendar_model.dart';
import 'package:app_pym/data/models/mobility/bus_model.dart';
import 'package:app_pym/data/models/mobility/bus_route_model.dart';
import 'package:app_pym/data/models/mobility/bus_stop_model.dart';
import 'package:app_pym/data/models/mobility/bus_stop_time_model.dart';
import 'package:app_pym/data/models/mobility/bus_trip_model.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:http/http.dart' as http;
import 'package:app_pym/core/error/exceptions.dart';

abstract class AppPYMRemoteDataSource {
  Future<List<BusStopModel>> fetchBusStop();
  Future<List<BusStopTimeModel>> fetchBusTime();
  Future<List<BusTripModel>> fetchBusTrip();
  Future<List<BusCalendarModel>> fetchBusCalendar();
  Future<List<BusRouteModel>> fetchBusRoute();
  Future<List<BusModel>> fetchBus();
}

@RegisterAs(AppPYMRemoteDataSource)
@prod
@lazySingleton
@injectable
class AppPYMRemoteDataSourceImpl implements AppPYMRemoteDataSource {
  final http.Client client;

  AppPYMRemoteDataSourceImpl({@required this.client});

  @override
  Future<List<BusStopModel>> fetchBusStop() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusStopModel.fromJson(data))
          .toList();
    } else {
      throw ServerException('Failed to load bus stop : ${response.statusCode}');
    }
  }

  @override
  Future<List<BusStopTimeModel>> fetchBusTime() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusStopTimeModel.fromJson(data))
          .toList();
    } else {
      throw ServerException('Failed to load bus time : ${response.statusCode}');
    }
  }

  @override
  Future<List<BusTripModel>> fetchBusTrip() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusTripModel.fromJson(data))
          .toList();
    } else {
      throw ServerException('Failed to load bus trip : ${response.statusCode}');
    }
  }

  @override
  Future<List<BusCalendarModel>> fetchBusCalendar() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusCalendarModel.fromJson(data))
          .toList();
    } else {
      throw ServerException(
          'Failed to load bus calendar : ${response.statusCode}');
    }
  }

  @override
  Future<List<BusRouteModel>> fetchBusRoute() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusRouteModel.fromJson(data))
          .toList();
    } else {
      throw ServerException(
          'Failed to load bus route : ${response.statusCode}');
    }
  }

  @override
  Future<List<BusModel>> fetchBus() async {
    final response = await client.get('');

    if (response.statusCode == 200) {
      return List<Map<String, dynamic>>.from(
              json.decode(response.body) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusModel.fromJson(data))
          .toList();
    } else {
      throw ServerException('Failed to load bus : ${response.statusCode}');
    }
  }
}
