part of 'home_bloc.dart';

@immutable
abstract class HomeEvent {}

class HomeProductWishlistButtonClickedEvent extends HomeEvent {}

class HomeProductCartButtonClickedEvent extends HomeEvent {}

class HomeWishlistButtonNavigateClickedEvent extends HomeEvent {}

class HomeCartButtonNavigateClickedEvent extends HomeEvent {}
