import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocer_app/features/cart/ui/cart_screen.dart';
import 'package:grocer_app/features/home/bloc/home_bloc.dart';
import 'package:grocer_app/features/wishlist/wishlist.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeBloc homeBloc = HomeBloc();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeBloc, HomeState>(
      bloc: homeBloc,
      listenWhen: (previous, current) => current is HomeActionState,
      buildWhen: (previous, current) => current is! HomeActionState,
      listener: (context, state) {
        if (state is HomeNavigateToCartPageActionState) {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CartScreen()));
        } else if (state is HomeNavigateToWishlistPageActionState) {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => WishlistScreen()));
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.green,
              title: Text('Grocer App', style: TextStyle(color: Colors.white)),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeCartButtonNavigateClickedEvent());
                    },
                    icon: Icon(Icons.shopping_cart_outlined,
                        color: Colors.white)),
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeWishlistButtonNavigateClickedEvent());
                    },
                    icon: Icon(Icons.favorite_outline, color: Colors.white))
              ]),
        );
      },
    );
  }
}
