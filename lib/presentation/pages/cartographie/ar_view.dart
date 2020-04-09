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
    print('Received message from unity: ${message.toString()}');
    showBottomSheet<void>(
      context: context,
      builder: (context) => BatimentDetailDisplay(
        idBatiment: int.tryParse(message.toString()),
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
