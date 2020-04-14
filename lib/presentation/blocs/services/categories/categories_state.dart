part of 'categories_bloc.dart';

@freezed
abstract class CategoriesState with _$CategoriesState {
  const factory CategoriesState.initial() = CategoriesInitial;
  const factory CategoriesState.loading() = CategoriesLoading;
  const factory CategoriesState.loaded(List<Categorie> categories) =
      CategoriesLoaded;
  const factory CategoriesState.error(String message) = CategoriesError;
}
