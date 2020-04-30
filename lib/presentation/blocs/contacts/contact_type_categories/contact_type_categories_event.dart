part of 'contact_type_categories_bloc.dart';

@freezed
abstract class ContactTypeCategoriesEvent with _$ContactTypeCategoriesEvent {
  const factory ContactTypeCategoriesEvent.fetch() =
      FetchContactTypeCategoriesEvent;
  const factory ContactTypeCategoriesEvent.refresh(List<Categorie> categories) =
      RefreshContactTypeCategoriesEvent;
}
