import 'package:equatable/equatable.dart';
import 'package:app_pym/domain/entities/services/action.dart';

class Service extends Equatable {
  final String service_id;
  final String service_title;
  final String service_categorie_id;
  final String service_subtitle;
  final String service_address;
  final String service_img_url;
  final List<Action> actions;

  const Service({
    this.service_id,
    this.service_title,
    this.service_categorie_id,
    this.service_subtitle,
    this.service_address,
    this.service_img_url,
    this.actions,
  });
  @override
  List<Object> get props => <Object>[
        service_id,
        service_title,
        service_categorie_id,
        service_subtitle,
        service_address,
        service_img_url,
        actions,
      ];
}
