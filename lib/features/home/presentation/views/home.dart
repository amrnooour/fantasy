import 'package:fantasy/core/constants/constants.dart';
import 'package:fantasy/features/home/presentation/cubit/home_cubit.dart';
import 'package:fantasy/features/home/presentation/cubit/home_states.dart';
import 'package:fantasy/features/home/presentation/views/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.read();
    return  BlocBuilder<HomeCubit,HomeStates>(
      builder: (context, state) => Scaffold(
        body: Constants.items[cubit.currentIndex],
        bottomNavigationBar: const CustomBottomNav(),
      ),
    );
  }
}