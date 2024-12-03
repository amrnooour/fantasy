

import 'package:dartz/dartz.dart';
import 'package:fantasy/features/auth/data/model/user_signin.dart';
import 'package:fantasy/features/auth/data/model/user_signup.dart';
import 'package:fantasy/features/auth/data/source/auth_firebase_services.dart';
import 'package:fantasy/service_locator.dart';

abstract class AuthRepo {
  Future<Either> signin(UserSignin user);
  Future<Either> signup(UserSignup user);
}

class AuthRepoImpl extends AuthRepo {
  @override
  Future<Either> signin(UserSignin user) async {
    return await sl<AuthFirebaseServices>().signin(user);
  }

  @override
  Future<Either> signup(UserSignup user) async {
   return await sl<AuthFirebaseServices>().signup(user);
  }
}
