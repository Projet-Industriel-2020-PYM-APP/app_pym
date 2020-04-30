part of 'contact_types_of_categorie_bloc.dart';

@freezed
abstract class ContactTypesOfCategorieState
    with _$ContactTypesOfCategorieState {
  const factory ContactTypesOfCategorieState.initial() =
      ContactTypesOfCategorieInitial;
  const factory ContactTypesOfCategorieState.loading() =
      ContactTypesOfCategorieLoading;
  const factory ContactTypesOfCategorieState.loaded(
      List<ContactType> contactTypes) = ContactTypesOfCategorieLoaded;
  const factory ContactTypesOfCategorieState.error(String message) =
      ContactTypesOfCategorieError;
}
