import 'dart:async';

import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'batiment_bloc.freezed.dart';
part 'batiment_event.dart';
part 'batiment_state.dart';

@prod
@injectable
class BatimentBloc extends Bloc<BatimentEvent, BatimentState> {
  final GetBatimentDetail getBatimentDetail;

  BatimentBloc(this.getBatimentDetail);

  @override
  BatimentState get initialState => const BatimentState.initial();

  @override
  Stream<BatimentState> mapEventToState(
    BatimentEvent event,
  ) async* {
    try {
      yield const BatimentState.loading();
      final batiment = await getBatimentDetail(event.id);
      yield BatimentState.loaded(batiment);
    } on Exception catch (e) {
      yield BatimentState.error(e);
    }
  }
}
