import 'package:freezed_annotation/freezed_annotation.dart';

part 'action.freezed.dart';

@freezed
abstract class Action with _$Action {
  const factory Action({
    @nullable @required String name,
    @nullable @required String html_url,
  }) = _Action;
}
