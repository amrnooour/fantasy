import 'package:fantasy/core/router/routes_names.dart';
import 'package:fantasy/features/auth/presentation/view_model/auth_cubit.dart';
import 'package:fantasy/features/auth/presentation/views/login.dart';
import 'package:fantasy/features/auth/presentation/views/signup.dart';
import 'package:fantasy/features/home/presentation/views/home.dart';
import 'package:fantasy/features/splash/splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

final GoRouter router = GoRouter(routes: [
  GoRoute(
  path: "/",builder: (context, state) => const Splash(),),
  GoRoute(
  path: RoutesNames.signin,builder: (context, state) => BlocProvider(
    create: (context) => AuthCubit(),
    child: const Login()),),
  GoRoute(
  path: RoutesNames.signup,builder: (context, state) => BlocProvider(
    create: (context) => AuthCubit(),
    child: const Signup()),),
  GoRoute(
  path: RoutesNames.home,builder: (context, state) => const Home(),),
]);
