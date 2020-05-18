import 'dart:convert';

import 'package:app_pym/core/error/exceptions.dart';
import 'package:app_pym/data/models/app_pym/booking_model.dart';
import 'package:app_pym/data/models/app_pym/contact_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/contact_model.dart';
import 'package:app_pym/data/models/app_pym/post_model.dart';
import 'package:app_pym/data/models/app_pym/service_categorie_model.dart';
import 'package:app_pym/data/models/app_pym/service_model.dart';
import 'package:app_pym/data/models/authentication/app_user_model.dart';
import 'package:app_pym/data/models/map_pym/batiment_model.dart';
import 'package:app_pym/data/models/map_pym/entreprise_model.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class MapPymLocalDataSource {
  Future<void> cacheAllBatiment(Iterable<BatimentModel> batimentModels);

  Future<void> cacheAllBookings(Iterable<BookingModel> bookings);

  Future<void> cacheAllContactCategories(
      Iterable<ContactCategorieModel> categories);

  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises);

  Future<void> cacheAllPosts(Iterable<PostModel> posts);

  Future<void> cacheAllServiceCategories(
      Iterable<ServiceCategorieModel> categories);

  Future<void> cacheAllServices(Iterable<ServiceModel> services);

  Future<void> cacheBatiment(BatimentModel batiment);

  Future<void> cacheBooking(BookingModel booking);

  Future<void> cacheContact(ContactModel contact);

  Future<void> cacheUser(AppUserModel user);

  /// Delete Booking. Do nothing if not found.
  Future<void> deleteBooking(int booking_id);

  List<BatimentModel> fetchAllBatiment();

  /// Fetch Services from cache. Filtered by [categorie_id].
  ///
  /// Empty list if not found.
  List<BookingModel> fetchAllBookingsOf(int service_id);

  List<ContactCategorieModel> fetchAllContactCategories();

  List<PostModel> fetchAllPosts();

  List<ServiceCategorieModel> fetchAllServiceCategories();

  /// Fetch a Batiment from cache.
  ///
  /// Throws [CacheException] if not found.
  BatimentModel fetchBatiment(int id);

  /// Fetch a Contact from cache.
  ///
  /// Throws [CacheException] if not found.
  ContactModel fetchContact(int id);

  /// Fetch Entreprises from cache. Filtered by [idBatiment].
  ///
  /// Empty list if not found.
  List<EntrepriseModel> fetchEntreprisesOfBatiment(int idBatiment);

  /// Fetch Services from cache. Filtered by [categorie_id].
  ///
  /// Empty list if not found.
  List<ServiceModel> fetchServicesOf(int categorie_id);

  /// Fetch a user from cache.
  ///
  /// Throws [CacheException] if not found.
  AppUserModel fetchUser();
}

@prod
@LazySingleton(as: MapPymLocalDataSource)
class MapPymLocalDataSourceImpl implements MapPymLocalDataSource {
  final Box<BatimentModel> batimentsBox;
  final Box<EntrepriseModel> entreprisesBox;
  final Box<PostModel> postsBox;
  final Box<ServiceCategorieModel> serviceCategoriesBox;
  final Box<ServiceModel> servicesBox;
  final Box<ContactCategorieModel> contactCategoriesBox;
  final Box<ContactModel> contactsBox;
  final Box<BookingModel> bookingsBox;
  final SharedPreferences prefs;

  const MapPymLocalDataSourceImpl({
    @required this.serviceCategoriesBox,
    @required this.servicesBox,
    @required this.contactCategoriesBox,
    @required this.batimentsBox,
    @required this.entreprisesBox,
    @required this.postsBox,
    @required this.contactsBox,
    @required this.bookingsBox,
    @required this.prefs,
  });

  @override
  Future<void> cacheAllBatiment(Iterable<BatimentModel> batiments) async {
    return batiments.forEach(cacheBatiment);
  }

  @override
  Future<void> cacheAllBookings(Iterable<BookingModel> bookings) async {
    return bookings.forEach(cacheBooking);
  }

  @override
  Future<void> cacheAllContactCategories(
      Iterable<ContactCategorieModel> categories) async {
    return categories.forEach(_cacheContactCategorie);
  }

  @override
  Future<void> cacheAllEntreprise(Iterable<EntrepriseModel> entreprises) async {
    return entreprises.forEach(_cacheEntreprise);
  }

  @override
  Future<void> cacheAllPosts(Iterable<PostModel> posts) async {
    return posts.forEach(_cachePost);
  }

  @override
  Future<void> cacheAllServiceCategories(
      Iterable<ServiceCategorieModel> categories) async {
    return categories.forEach(_cacheServiceCategory);
  }

  @override
  Future<void> cacheAllServices(Iterable<ServiceModel> services) async {
    return services.forEach(_cacheService);
  }

  @override
  Future<void> cacheBatiment(BatimentModel batiment) {
    return batimentsBox.put(
      '/batiments/${batiment.id}',
      batiment,
    );
  }

  @override
  Future<void> cacheBooking(BookingModel booking) {
    return bookingsBox.put('/bookings/${booking.id}', booking);
  }

  @override
  Future<void> cacheContact(ContactModel contact) {
    return contactsBox.put(
      '/contacts/${contact.id}',
      contact,
    );
  }

  @override
  Future<void> cacheUser(AppUserModel user) {
    return prefs.setString('user', json.encode(user.toJson()));
  }

  @override
  Future<void> deleteBooking(int booking_id) {
    return bookingsBox.delete('/bookings/${booking_id}');
  }

  @override
  List<BatimentModel> fetchAllBatiment() {
    final List<BatimentModel> batimentModels =
        batimentsBox?.values?.toList() ?? [];
    return batimentModels;
  }

  @override
  List<BookingModel> fetchAllBookingsOf(int service_id) {
    final models = bookingsBox?.values
            ?.where((e) => e.service_id == service_id)
            ?.toList() ??
        [];
    return models;
  }

  @override
  List<ContactCategorieModel> fetchAllContactCategories() {
    final data = contactCategoriesBox?.values?.toList() ?? [];

    return data;
  }

  @override
  List<PostModel> fetchAllPosts() {
    final models = postsBox?.values?.toList() ?? [];
    return models;
  }

  @override
  List<ServiceCategorieModel> fetchAllServiceCategories() {
    final data = serviceCategoriesBox?.values?.toList() ?? [];

    return data;
  }

  @override
  BatimentModel fetchBatiment(int id) {
    final BatimentModel batimentModel = batimentsBox.get('/batiments/${id}');
    if (batimentModel != null) {
      return batimentModel;
    } else {
      throw CacheException('No Batiment in cache.');
    }
  }

  @override
  ContactModel fetchContact(int id) {
    final ContactModel contactModel = contactsBox.get('/contacts/${id}');
    if (contactModel != null) {
      return contactModel;
    } else {
      throw CacheException('No Contact $id in cache.');
    }
  }

  @override
  List<EntrepriseModel> fetchEntreprisesOfBatiment(int idBatiment) {
    final entreprisesOfBatiment = entreprisesBox?.values
            ?.where((element) => element.idBatiment == idBatiment)
            ?.toList() ??
        [];
    return entreprisesOfBatiment;
  }

  @override
  List<ServiceModel> fetchServicesOf(int categorie_id) {
    final models = servicesBox?.values
            ?.where((element) => element.categorie_id == categorie_id)
            ?.toList() ??
        [];
    return models;
  }

  @override
  AppUserModel fetchUser() {
    final user = prefs.getString('user');
    if (user != null) {
      return AppUserModel.fromJson(json.decode(user) as Map<String, dynamic>);
    } else {
      throw CacheException('No Users in cache');
    }
  }

  Future<void> _cacheContactCategorie(ContactCategorieModel category) {
    return contactCategoriesBox.put(
      '/contact_categories/${category.id}',
      category,
    );
  }

  Future<void> _cacheEntreprise(EntrepriseModel entreprise) {
    return entreprisesBox.put(
      '/entreprises/${entreprise.id}',
      entreprise,
    );
  }

  Future<void> _cachePost(PostModel post) {
    return postsBox.put('/posts/${post.id}', post);
  }

  Future<void> _cacheService(ServiceModel service) {
    return servicesBox.put('/services/${service.id}', service);
  }

  Future<void> _cacheServiceCategory(ServiceCategorieModel category) {
    return serviceCategoriesBox.put(
      '/service_categories/${category.id}',
      category,
    );
  }
}
