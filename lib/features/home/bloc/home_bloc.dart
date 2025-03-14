import 'package:bloc/bloc.dart';
import 'dart:async';

import 'package:flutter/material.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
    on<HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent);

    on<HomeProductWishlistButtonClickedEvent>(
        homeProductWishlistButtonClickedEvent);
    on<HomeCartButtonNavigateClickedEvent>(homeCartButtonNavigateClickedEvent);
    on<HomeWishlistButtonNavigateClickedEvent>(
        homeWishlistButtonNavigateClickedEvent);
  }
  FutureOr<void> homeProductCartButtonClickedEvent(
      HomeProductCartButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Cart Product clicked');
  }

  FutureOr<void> homeProductWishlistButtonClickedEvent(
      HomeProductWishlistButtonClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist Product clicked');
  }

  FutureOr<void> homeCartButtonNavigateClickedEvent(
      HomeCartButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Cart Navigate clicked');
    emit(HomeNavigateToCartPageActionState());
  }

  FutureOr<void> homeWishlistButtonNavigateClickedEvent(
      HomeWishlistButtonNavigateClickedEvent event, Emitter<HomeState> emit) {
    print('Wishlist Navigate clicked');
    emit(HomeNavigateToWishlistPageActionState());
  }
}
