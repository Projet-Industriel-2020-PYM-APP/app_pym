import 'package:app_pym/data/datasources/firestore_data_source.dart';
import 'package:app_pym/data/mappers/app_pym/service_mapper.dart';
import 'package:app_pym/domain/entities/app_pym/categorie.dart';
import 'package:app_pym/domain/entities/app_pym/service.dart';
import 'package:app_pym/domain/repositories/app_pym/service_repository.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@prod
@RegisterAs(ServiceRepository)
@lazySingleton
@injectable
class ServiceRepositoryImpl implements ServiceRepository {
  final FirestoreDataSource dataSource;
  final ServiceMapper mapper;

  const ServiceRepositoryImpl({
    @required this.dataSource,
    @required this.mapper,
  });

  @override
  Stream<List<Service>> fetchServicesOf(Categorie categorie) async* {
    yield* dataSource
        .fetchServicesOf(categorie.id)
        .map((list) => list.map(mapper.mapTo).toList());
  }
}
