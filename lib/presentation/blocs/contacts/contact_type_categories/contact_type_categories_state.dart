part of 'contact_type_categories_bloc.dart';

@freezed
abstract class ContactTypeCategoriesState with _$ContactTypeCategoriesState {
  const factory ContactTypeCategoriesState.initial() = CategoriesInitial;
  const factory ContactTypeCategoriesState.loading() = CategoriesLoading;
  const factory ContactTypeCategoriesState.loaded(List<Categorie> categories) =
      CategoriesLoaded;
  const factory ContactTypeCategoriesState.error(String message) =
      CategoriesError;
}
