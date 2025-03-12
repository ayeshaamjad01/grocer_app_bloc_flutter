import 'package:bloc/bloc.dart';
import 'dart:async';
import 'package:meta/meta.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial()) {
   on <HomeProductCartButtonClickedEvent>(homeProductCartButtonClickedEvent());
   
   on<HomeProductWishlistButtonClickedEvent>(homeProductWishlistButtonClickedEvent());
  }
  FutureOr<void> homeProductCartButtonClickedEvent(HomeProductCartButtonClickedEvent event, Emitter <HomeState> emit)
}
