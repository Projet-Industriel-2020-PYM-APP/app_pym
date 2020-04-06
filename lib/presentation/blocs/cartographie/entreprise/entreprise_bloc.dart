import 'dart:async';

import 'package:app_pym/domain/entities/map_pym/entreprise.dart';
import 'package:app_pym/domain/usecases/cartographie/get_entreprises_of_batiment.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';

part 'entreprise_event.dart';
part 'entreprise_state.dart';

@prod
@injectable
class EntrepriseBloc extends Bloc<EntrepriseEvent, EntrepriseState> {
  final GetEntreprisesOfBatiment getEntreprisesOfBatiment;

  EntrepriseBloc(this.getEntreprisesOfBatiment);

  @override
  EntrepriseState get initialState => const EntrepriseUnloaded();

  @override
  Stream<EntrepriseState> mapEventToState(
    EntrepriseEvent event,
  ) async* {
    if (event is GetEntreprisesOfBatimentEvent) {
      try {
        yield const EntrepriseLoading();
        final entreprises = await getEntreprisesOfBatiment(event.idBatiment);
        yield EntreprisesOfBatimentLoaded(entreprises);
      } catch (e) {
        yield EntrepriseError(e);
      }
    }
  }
}
