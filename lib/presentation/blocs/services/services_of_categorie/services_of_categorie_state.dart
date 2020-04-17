part of 'services_of_categorie_bloc.dart';

@freezed
abstract class ServicesOfCategorieState with _$ServicesOfCategorieState {
  const factory ServicesOfCategorieState.initial() = ServicesOfCategorieInitial;
  const factory ServicesOfCategorieState.loading() = ServicesOfCategorieLoading;
  const factory ServicesOfCategorieState.loaded(List<Service> services) =
      ServicesOfCategorieLoaded;
  const factory ServicesOfCategorieState.error(String message) =
      ServicesOfCategorieError;
}
