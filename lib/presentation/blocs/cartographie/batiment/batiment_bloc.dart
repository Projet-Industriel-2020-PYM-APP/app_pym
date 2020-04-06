import 'dart:async';

import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/usecases/cartographie/get_batiment_detail.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'batiment_event.dart';
part 'batiment_state.dart';

@prod
@injectable
class BatimentBloc extends Bloc<BatimentEvent, BatimentState> {
  final GetBatimentDetail getBatimentDetail;

  BatimentBloc(this.getBatimentDetail);

  @override
  BatimentState get initialState => const BatimentUnloaded();

  @override
  Stream<BatimentState> mapEventToState(
    BatimentEvent event,
  ) async* {
    if (event is GetBatimentDetailEvent) {
      try {
        yield const BatimentLoading();
        final batiment = await getBatimentDetail(event.id);
        yield BatimentLoaded(batiment);
      } catch (e) {
        yield BatimentError(e);
      }
    }
  }
}
