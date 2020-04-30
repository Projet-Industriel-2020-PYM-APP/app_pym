part of 'contact_types_of_categorie_bloc.dart';

@freezed
abstract class ContactTypesOfCategorieEvent
    with _$ContactTypesOfCategorieEvent {
  const factory ContactTypesOfCategorieEvent.fetch(Categorie categorie) =
      FetchContactTypesOfCategorieEvent;
  const factory ContactTypesOfCategorieEvent.refresh(
      List<ContactType> contactTypes) = RefreshContactTypesOfCategorieEvent;
}
