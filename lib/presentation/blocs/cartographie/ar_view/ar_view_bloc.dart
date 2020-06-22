import 'dart:async';

import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'ar_view_bloc.freezed.dart';
part 'ar_view_event.dart';
part 'ar_view_state.dart';

@prod
@injectable
class ArViewBloc extends Bloc<ArViewEvent, ArViewState> {
  UnityWidgetController unityWidgetController;
  final LoadPageAndPlaceBatiments loadPageAndPlaceBatiment;

  ArViewBloc(this.loadPageAndPlaceBatiment);

  @override
  ArViewState get initialState => const ArViewState.initial();

  @override
  Future<void> close() async {
    await (unityWidgetController?.pause() as Future);
    return super.close();
  }

  @override
  Stream<ArViewState> mapEventToState(
    ArViewEvent event,
  ) async* {
    yield* event.map(
      fetchFromUnity: (e) async* {
        try {
          yield const ArViewState.loading();
          unityWidgetController = e.unityWidgetController;
          await Future<Position>.delayed(
            const Duration(seconds: 2),
            () => loadPageAndPlaceBatiment(LoadPageAndPlaceBatimentParams(
              controller: unityWidgetController,
              bearingBetweenCameraAndNorth: e.bearingBetweenCameraAndNorth,
            )),
          );
          add(const ArViewEvent.loaded());
        } on Exception catch (e) {
          yield ArViewState.error(e);
        }
      },
      loaded: (e) async* {
        yield const ArViewState.loaded();
      },
    );
  }
}
