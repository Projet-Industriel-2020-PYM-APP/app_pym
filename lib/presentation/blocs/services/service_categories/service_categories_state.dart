part of 'service_categories_bloc.dart';

@freezed
abstract class ServiceCategoriesState with _$ServiceCategoriesState {
  const factory ServiceCategoriesState.initial() = CategoriesInitial;
  const factory ServiceCategoriesState.loading() = CategoriesLoading;
  const factory ServiceCategoriesState.loaded(
      List<ServiceCategorie> categories) = CategoriesLoaded;
  const factory ServiceCategoriesState.error(String message) = CategoriesError;
}
