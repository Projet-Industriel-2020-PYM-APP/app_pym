import 'package:equatable/equatable.dart';
import 'package:app_pym/domain/entities/services/action.dart';

class Categorie extends Equatable {
  final String categorie_id;
  final String categorie_name;
  final List<Action> actions;

  const Categorie({
    this.categorie_id,
    this.categorie_name,
    this.actions,
  });

  @override
  List<Object> get props => <Object>[
        categorie_id,
        categorie_name,
        actions,
      ];
}
