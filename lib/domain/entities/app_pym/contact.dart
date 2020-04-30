import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact.freezed.dart';

@freezed
abstract class Contact with _$Contact {
  const factory Contact({
    String id,
    String html_url,
    String address,
    String email,
    String name,
    String telephone,
    String user_id,
  }) = _Contact;
}
