import 'dart:convert';

import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:app_pym/domain/entities/map_pym/batiment.dart';
import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/presentation/blocs/cartographie/ar_view/ar_view_bloc.dart';
import 'package:app_pym/presentation/blocs/cartographie/compass/compass_bloc.dart';
import 'package:app_pym/presentation/widgets/cartographie/batiment_detail.dart';
import 'package:flutter/material.dart';
import 'package:flutter_unity_widget/flutter_unity_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArView extends StatelessWidget {
  const ArView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UnityWidget(
      onUnityViewCreated: (controller) => onUnityCreated(context, controller),
      isARScene: true,
      onUnityMessage: (controller, dynamic message) =>
          onUnityMessage(context, controller, message),
    );
  }

  void onUnityMessage(
    BuildContext context,
    UnityWidgetController controller,
    dynamic message,
  ) {
    final Map<String, dynamic> data =
        json.decode(message.toString()) as Map<String, dynamic>;
    print(data);
    final Batiment batiment = BatimentModel.fromJson(data).toEntity();
    final List<Entreprise> entreprises = (data["entreprises"] as List)
        ?.map((dynamic e) =>
            EntrepriseModel.fromJson(e as Map<String, dynamic>).toEntity())
        ?.toList();
    assert(batiment != null && entreprises != null);

    showModalBottomSheet<void>(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      builder: (context) => BatimentDetailDisplay(
        batiment: batiment,
        entreprises: entreprises,
      ),
    );
  }

  // Callback that connects the created controller to the unity controller
  void onUnityCreated(BuildContext context, UnityWidgetController controller) {
    // Reload scene of Unity
    controller.postMessage("GameManager", "Reload", "");
    final state = context.bloc<CompassBloc>().state;
    if (state is CompassLoaded) {
      final bearing = state.bearingBetweenCameraAndNorth;
      context.bloc<ArViewBloc>().add(
            FetchFromUnityEvent(
              unityWidgetController: controller,
              bearingBetweenCameraAndNorth: bearing,
            ),
          );
    }
  }
}
