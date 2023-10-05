import 'package:elastico/app/core/common/bottom_navigation_cubit.dart';
import 'package:elastico/app/core/components/bottom_navigation.dart';
import 'package:elastico/app/config/locator/locator.dart';
import 'package:elastico/app/features/auth/presentation/screens/profile_screen.dart';
import 'package:elastico/app/features/cart/presentation/screens/cart_screen.dart';
import 'package:elastico/app/features/home/presentation/bloc/home_bloc.dart';
import 'package:elastico/app/features/home/presentation/screens/home_screen.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BottomNavigationCubit, int>(
      builder: (context, state) {
        return Scaffold(
          body: IndexedStack(
            index: state,
            children: _getScreens(),
          ),
          bottomNavigationBar: BottomNavigation(
            selectedItem: state,
            onTap: (value) => context
                .read<BottomNavigationCubit>()
                .changeSelectedIndex(value),
          ),
        );
      },
    );
  }

  List<Widget> _getScreens() {
    return [
      BlocProvider(
        create: (context) =>
            HomeBloc(locator.get(), locator.get())..initialRequest(),
        child: const HomeScreen(),
      ),
      BlocProvider(
        create: (context) =>
            HomeBloc(locator.get(), locator.get())..initialRequest(),
        child: const HomeScreen(),
      ),
      const CartScreen(),
      const ProfileScreen(),
    ];
  }
}
