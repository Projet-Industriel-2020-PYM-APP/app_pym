part of 'main_page_bloc.dart';

class MainPageState extends Equatable {
  final int currentIndex;

  const MainPageState(this.currentIndex);

  @override
  List<Object> get props => [currentIndex];
}
