part of 'home_bloc.dart';

sealed class HomeEvent extends Equatable {
  const HomeEvent();
}

class GetNewsEvent extends HomeEvent{
  const GetNewsEvent();

  @override
  List<Object> get props => [];
}