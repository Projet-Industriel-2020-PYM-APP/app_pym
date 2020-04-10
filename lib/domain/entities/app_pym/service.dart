import 'package:app_pym/domain/entities/app_pym/action.dart';
import 'package:equatable/equatable.dart';

class Service extends Equatable {
  final String id;
  final String title;
  final String categorie_id;
  final String subtitle;
  final String address;
  final String img_url;
  final List<Action> actions;

  const Service({
    this.id,
    this.title,
    this.categorie_id,
    this.subtitle,
    this.address,
    this.img_url,
    this.actions,
  });
  @override
  List<Object> get props => <Object>[
        id,
        title,
        categorie_id,
        subtitle,
        address,
        img_url,
        actions,
      ];
}
