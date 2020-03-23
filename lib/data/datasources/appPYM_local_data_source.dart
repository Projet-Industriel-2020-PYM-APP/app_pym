import 'dart:convert';

import 'package:app_pym/data/models/mobility/bus_calendar_model.dart';
import 'package:app_pym/data/models/mobility/bus_model.dart';
import 'package:app_pym/data/models/mobility/bus_route_model.dart';
import 'package:app_pym/data/models/mobility/bus_stop_model.dart';
import 'package:app_pym/data/models/mobility/bus_stop_time_model.dart';
import 'package:app_pym/data/models/mobility/bus_trip_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:app_pym/core/error/exceptions.dart';

abstract class AppPYMLocalDataSource {
  Future<void> cacheBusStop(List<BusStopModel> busStopToCache, String repo);
  Future<void> cacheBusTime(List<BusStopTimeModel> busTimeToCache, String repo);
  Future<void> cacheBusTrip(List<BusTripModel> busTripToCache, String repo);
  Future<void> cacheBusCalendar(
      List<BusCalendarModel> busCalendarToCache, String repo);
  Future<void> cacheBusRoute(List<BusRouteModel> busRouteToCache, String repo);
  Future<void> cacheBus(List<BusModel> busToCache, String repo);

  Future<List<BusStopModel>> fetchLastBusStop(String repo);
  Future<List<BusStopTimeModel>> fetchLastBusTime(String repo);
  Future<List<BusTripModel>> fetchLastBusTrip(String repo);
  Future<List<BusCalendarModel>> fetchLastBusCalendar(String repo);
  Future<List<BusRouteModel>> fetchLastBusRoute(String repo);
  Future<List<BusModel>> fetchLastBus(String repo);
}

@RegisterAs(AppPYMLocalDataSource)
@prod
@lazySingleton
@injectable
class AppPYMLocalDataSourceImpl implements AppPYMLocalDataSource {
  final Box<String> box;

  AppPYMLocalDataSourceImpl({@required this.box});

  @override
  Future<void> cacheBusStop(List<BusStopModel> busStopToCache, String repo) {
    return box.put(
      repo,
      json.encode(busStopToCache
          .map((BusStopModel release) => release.toJson())
          .toList()),
    );
  }

  @override
  Future<List<BusStopModel>> fetchLastBusStop(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusStopModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheBusTime(
      List<BusStopTimeModel> busTimeToCache, String repo) {
    return box.put(
      repo,
      json.encode(busTimeToCache
          .map((BusStopTimeModel release) => release.toJson())
          .toList()),
    );
  }

  @override
  Future<List<BusStopTimeModel>> fetchLastBusTime(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusStopTimeModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheBusTrip(List<BusTripModel> busTripToCache, String repo) {
    return box.put(
      repo,
      json.encode(busTripToCache
          .map((BusTripModel release) => release.toJson())
          .toList()),
    );
  }

  @override
  Future<List<BusTripModel>> fetchLastBusTrip(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusTripModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheBusCalendar(
      List<BusCalendarModel> busCalendarToCache, String repo) {
    return box.put(
      repo,
      json.encode(busCalendarToCache
          .map((BusCalendarModel release) => release.toJson())
          .toList()),
    );
  }

  @override
  Future<List<BusCalendarModel>> fetchLastBusCalendar(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusCalendarModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheBusRoute(List<BusRouteModel> busRouteToCache, String repo) {
    return box.put(
      repo,
      json.encode(busRouteToCache
          .map((BusRouteModel release) => release.toJson())
          .toList()),
    );
  }

  @override
  Future<List<BusRouteModel>> fetchLastBusRoute(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusRouteModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }

  @override
  Future<void> cacheBus(List<BusModel> busToCache, String repo) {
    return box.put(
      repo,
      json.encode(
          busToCache.map((BusModel release) => release.toJson()).toList()),
    );
  }

  @override
  Future<List<BusModel>> fetchLastBus(String repo) async {
    final jsonString = box.get(repo);
    if (jsonString != null) {
      return List<Map<String, dynamic>>.from(
              json.decode(jsonString) as List<dynamic>)
          .map((Map<String, dynamic> data) => BusModel.fromJson(data))
          .toList();
    } else {
      throw CacheException();
    }
  }
}
