part of 'main_page_bloc.dart';

@freezed
abstract class MainPageEvent with _$MainPageEvent {
  const factory MainPageEvent.goTo(int index) = GoToPageEvent;
}
