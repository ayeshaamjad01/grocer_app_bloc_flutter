import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocer_app/features/home/bloc/home_bloc.dart';

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
      // listenWhen: (previous, current) {null;},
      // buildWhen: (previous, current) {null;},
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
              title: Text(
                'Grocer App',
              ),
              centerTitle: true,
              actions: [
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductCartButtonClickedEvent());
                    },
                    icon: Icon(Icons.shopping_cart_outlined,
                        color: Colors.green)),
                IconButton(
                    onPressed: () {
                      homeBloc.add(HomeProductWishlistButtonClickedEvent());
                    },
                    icon: Icon(Icons.favorite_outline, color: Colors.green))
              ]),
        );
      },
    );
  }
}
