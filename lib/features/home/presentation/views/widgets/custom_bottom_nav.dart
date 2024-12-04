import 'package:fantasy/core/constants/app_assets.dart';
import 'package:fantasy/features/home/presentation/cubit/home_cubit.dart';
import 'package:fantasy/features/home/presentation/cubit/home_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit cubit = context.read();
    return BlocBuilder<HomeCubit, HomeStates>(
      builder: (context, state) {
        return BottomNavigationBar(
          selectedItemColor: Colors.green,
          showUnselectedLabels: true,
            currentIndex: cubit.currentIndex,
            onTap: (index) {
              cubit.changeBottomNav(index);
            },
            items: [
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 0
                      ? Image.asset(AppAssets.newsIcon,height: 35,width: 35,)
                      : Image.asset(AppAssets.newsIcon,height: 25,width: 25,),
                  label: "News"),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 1
                      ? Image.asset(AppAssets.fantasyIcon,height: 35,width: 35,)
                      : Image.asset(AppAssets.fantasyIcon,height: 25,width: 25,),
                  label: "Fantasy"),
              BottomNavigationBarItem(
                  icon: cubit.currentIndex == 2
                      ? Image.asset(AppAssets.staicsIcon,height: 35,width: 35,)
                      : Image.asset(AppAssets.staicsIcon,height: 25,width: 25,),
                  label: "Statics"),
            ]);
      },
    );
  }
}
