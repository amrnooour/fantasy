import 'package:fantasy/core/constants/app_assets.dart';
import 'package:fantasy/core/router/navigation.dart';
import 'package:fantasy/core/router/routes_names.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 3), () {
      customReplacementNavigate(context, RoutesNames.signin);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
            child: Image.asset(
          AppAssets.logo,
        )));
  }
}
