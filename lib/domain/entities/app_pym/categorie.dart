import 'package:equatable/equatable.dart';
import 'package:app_pym/domain/entities/app_pym/action.dart';

class Categorie extends Equatable {
  final String id;
  final String name;
  final Action action;

  const Categorie({
    this.id,
    this.name,
    this.action,
  });

  @override
  List<Object> get props => <Object>[
        id,
        name,
        action,
      ];
}
