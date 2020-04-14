import 'package:freezed_annotation/freezed_annotation.dart';

part 'action.freezed.dart';

@freezed
abstract class Action with _$Action {
  const factory Action({
    String id,
    String name,
    String html_url,
  }) = _Action;
}
