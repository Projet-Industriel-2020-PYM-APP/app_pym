part of 'service_categories_bloc.dart';

@freezed
abstract class ServiceCategoriesEvent with _$ServiceCategoriesEvent {
  const factory ServiceCategoriesEvent.fetch() = FetchServiceCategoriesEvent;
  const factory ServiceCategoriesEvent.refresh(
      List<ServiceCategorie> categories) = RefreshServiceCategoriesEvent;
}
