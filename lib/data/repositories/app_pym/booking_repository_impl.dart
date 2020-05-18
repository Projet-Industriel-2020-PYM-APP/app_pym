import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/core/network/network_info.dart';
import 'package:app_pym/data/datasources/map_pym_local_data_source.dart';
import 'package:app_pym/data/datasources/map_pym_remote_data_source.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/services/authentication_service.dart';
import 'package:app_pym/domain/entities/app_pym/booking.dart';
import 'package:app_pym/domain/repositories/app_pym/booking_repository.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@LazySingleton(as: BookingRepository)
class BookingRepositoryImpl implements BookingRepository {
  final AuthenticationService auth;
  final MapPymLocalDataSource localDataSource;
  final MapPymRemoteDataSource remoteDataSource;
  final NetworkInfo networkInfo;

  const BookingRepositoryImpl({
    @required this.auth,
    @required this.localDataSource,
    @required this.remoteDataSource,
    @required this.networkInfo,
  });

  @override
  Future<void> create(Booking booking) async {
    if (auth.token != null) {
      if (await networkInfo.result != ConnectivityResult.none) {
        await remoteDataSource.createBooking(booking.toModel(),
            token: auth.token);
        await localDataSource.cacheBooking(booking.toModel());
      } else {
        throw ConnectivityException('No Wi-Fi');
      }
    } else {
      throw ServerException("Nécéssite d'être authentifié.");
    }
  }

  @override
  Future<void> delete(int booking_id) async {
    if (auth.token != null) {
      if (await networkInfo.result != ConnectivityResult.none) {
        await remoteDataSource.deleteBooking(booking_id, token: auth.token);
        await localDataSource.deleteBooking(booking_id);
        return;
      } else {
        throw ConnectivityException('No Wi-Fi');
      }
    } else {
      throw ServerException("Nécéssite d'être authentifié.");
    }
  }

  @override
  Future<List<Booking>> fetchAllOf(int service_id) async {
    if (await networkInfo.result != ConnectivityResult.none) {
      final data = await remoteDataSource.fetchAllBookingsOf(service_id) ?? [];
      await localDataSource.cacheAllBookings(data);
      return data.map((e) => e.toEntity()).toList();
    } else {
      final data = localDataSource.fetchAllBookingsOf(service_id);
      return data.map((e) => e.toEntity()).toList();
    }
  }

  @override
  Future<void> update(Booking booking) async {
    if (auth.token != null) {
      if (await networkInfo.result != ConnectivityResult.none) {
        await remoteDataSource.updateBooking(booking.toModel(),
            token: auth.token);
        await localDataSource.cacheBooking(booking.toModel());
        return;
      } else {
        throw ConnectivityException('No Wi-Fi');
      }
    } else {
      throw ServerException("Nécéssite d'être authentifié.");
    }
  }
}
