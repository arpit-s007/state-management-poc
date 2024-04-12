part of 'home_bloc.dart';

// sealed class HomeState extends Equatable {
//   const HomeState();
// }
//
// final class HomeInitial extends HomeState {
//   @override
//   List<Object> get props => [];
// }


@immutable
abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object> get props => [];
}

@immutable
class HomeStateInitial extends HomeState {
  const HomeStateInitial();
}

@immutable
class HomeStateLoading extends HomeState {
  // final int index;

  const HomeStateLoading();

  @override
  List<Object> get props => [];
}

@immutable
class HomeStateLoaded extends HomeState {
  List<ArticleModel> newsItems;

   HomeStateLoaded(this.newsItems);

  @override
  List<Object> get props => [newsItems];
}

@immutable
class HomeStateError extends HomeState {
  // final String text;

  const HomeStateError();

  @override
  List<Object> get props => [];
}

// ... (similar classes for other state variations)
