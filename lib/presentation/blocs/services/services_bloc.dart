import 'package:flutter/material.dart';
import 'package:app_pym/injection_container.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

import 'package:app_pym/domain/entities/services/categorie.dart';
import 'package:app_pym/domain/entities/services/service.dart';
part 'services_event.dart';
part 'services_state.dart';

@prod
@injectable
class ServicesBloc extends Bloc<ServicesEvent, ServicesState> {
  @override
  ServicesState get initialState => const ServicesStateInitial();

  @override
  Stream<ServicesState> mapEventToState(ServicesEvent event) {
    // TODO: implement mapEventToState
    throw UnimplementedError();
  }
}
