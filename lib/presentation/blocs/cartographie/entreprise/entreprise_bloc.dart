import 'dart:async';

import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'entreprise_bloc.freezed.dart';
part 'entreprise_event.dart';
part 'entreprise_state.dart';

@prod
@injectable
class EntrepriseBloc extends Bloc<EntrepriseEvent, EntrepriseState> {
  final GetEntreprisesOfBatiment getEntreprisesOfBatiment;

  EntrepriseBloc(this.getEntreprisesOfBatiment);

  @override
  EntrepriseState get initialState => const EntrepriseState.initial();

  @override
  Stream<EntrepriseState> mapEventToState(
    EntrepriseEvent event,
  ) async* {
    try {
      yield const EntrepriseState.loading();
      final entreprises = await getEntreprisesOfBatiment(event.idBatiment);
      yield EntrepriseState.entreprisesOfBatimentLoaded(entreprises);
    } on Exception catch (e) {
      yield EntrepriseState.error(e);
    }
  }
}
