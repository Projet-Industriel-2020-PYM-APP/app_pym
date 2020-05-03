part of 'contact_categories_bloc.dart';

@freezed
abstract class ContactCategoriesState with _$ContactCategoriesState {
  const factory ContactCategoriesState.initial() = ContactCategoriesInitial;
  const factory ContactCategoriesState.loading() = ContactCategoriesLoading;
  const factory ContactCategoriesState.loaded(
      List<ContactCategorie> categories) = ContactCategoriesLoaded;
  const factory ContactCategoriesState.error(String message) =
      ContactCategoriesError;
}
