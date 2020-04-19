import 'package:app_pym/domain/entities/app_pym/contact.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  const factory ContactModel({
    String id,
    String html_url,
    String address,
    String name,
    String email,
    String telephone,
    String user_id,
  }) = _ContactModel;

  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}

extension ContactModelX on ContactModel {
  Contact toEntity() {
    return Contact(
      id: this.id,
      html_url: this.html_url,
      address: this.address,
      name: this.name,
      email: this.email,
      telephone: this.telephone,
      user_id: this.user_id,
    );
  }
}
