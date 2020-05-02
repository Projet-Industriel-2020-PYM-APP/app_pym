part of 'contact_categories_bloc.dart';

@freezed
abstract class ContactCategoriesEvent with _$ContactCategoriesEvent {
  const factory ContactCategoriesEvent.fetch() = FetchContactCategoriesEvent;
  const factory ContactCategoriesEvent.refresh(
      List<ContactCategorie> categories) = RefreshContactCategoriesEvent;
}
