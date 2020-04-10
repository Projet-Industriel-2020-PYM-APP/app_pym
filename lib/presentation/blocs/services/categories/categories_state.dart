part of 'categories_bloc.dart';

abstract class CategoriesState extends Equatable {
  const CategoriesState();

  @override
  List<Object> get props => [];
}

class CategoriesInitial extends CategoriesState {
  const CategoriesInitial();
}

class CategoriesError extends CategoriesState {
  final String message;

  const CategoriesError({@required this.message});

  @override
  List<Object> get props => [message];
}

class CategoriesLoading extends CategoriesState {
  const CategoriesLoading();
}

class CategoriesLoaded extends CategoriesState {
  final List<Categorie> categories;

  const CategoriesLoaded(this.categories);

  @override
  List<Object> get props => categories;
}
