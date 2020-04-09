import 'package:app_pym/data/mappers/map_pym/batiment_position_mapper.dart';
import 'package:app_pym/data/models/map_pym/batiment_position_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment_position.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:injectable/injectable.dart' show Environment;

void main() {
  BatimentPositionMapper mapper;

  init(env: Environment.test);

  setUp(() {
    mapper = const BatimentPositionMapper();
  });

  const tBatimentPostion = BatimentPosition(
    idBatiment: 1,
    latitude: 44,
    longitude: 3,
  );
  const tBatimentPositionModel = BatimentPositionModel(
    idBatiment: 1,
    latitude: 44,
    longitude: 3,
  );

  test(
    'mapFrom',
    () async {
      // act
      final result = mapper.mapFrom(tBatimentPostion);
      // assert
      expect(result, equals(tBatimentPositionModel));
    },
  );

  test(
    'mapTo',
    () async {
      // act
      final result = mapper.mapTo(tBatimentPositionModel);
      // assert
      expect(result, equals(tBatimentPostion));
    },
  );
}
