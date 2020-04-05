import 'dart:async';

import 'package:app_pym/domain/usecases/cartographie/load_page_and_place_batiments.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'ar_view_event.dart';
part 'ar_view_state.dart';

// TODO : https://developers.google.com/ar/distribute/privacy-requirements
@prod
@injectable
class ArViewBloc extends Bloc<ArViewEvent, ArViewState> {
  UnityWidgetController unityWidgetController;
  final LoadPageAndPlaceBatiment loadPageAndPlaceBatiment;

  ArViewBloc(this.loadPageAndPlaceBatiment);

  @override
  ArViewState get initialState => const ArViewUnloaded();

  @override
  Stream<ArViewState> mapEventToState(
    ArViewEvent event,
  ) async* {
    if (event is FetchFromUnityEvent) {
      try {
        yield const ArViewLoading();
        unityWidgetController = event.unityWidgetController;
        await Future<Position>.delayed(
          const Duration(seconds: 2),
          () => loadPageAndPlaceBatiment(Params(
            controller: unityWidgetController,
            bearingBetweenCameraAndNorth: event.bearingBetweenCameraAndNorth,
          )),
        );
        add(const ArLoadedEvent());
      } catch (e) {
        yield ArViewError(e);
      }
    } else if (event is ArLoadedEvent) {
      yield const ArViewLoaded();
    }
  }

  @override
  Future<void> close() async {
    await (unityWidgetController?.pause() as Future);
    return super.close();
  }
}
