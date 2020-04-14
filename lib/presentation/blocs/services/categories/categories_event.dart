part of 'categories_bloc.dart';

@freezed
abstract class CategoriesEvent with _$CategoriesEvent {
  const factory CategoriesEvent.fetch() = FetchCategoriesEvent;
  const factory CategoriesEvent.refresh(List<Categorie> categories) =
      RefreshCategoriesEvent;
}
