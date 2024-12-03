import 'package:fantasy/features/auth/data/model/user_signin.dart';
import 'package:fantasy/features/auth/data/model/user_signup.dart';
import 'package:fantasy/features/auth/data/repos/auth_repo.dart';
import 'package:fantasy/features/auth/presentation/view_model/auth_states.dart';
import 'package:fantasy/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthCubit extends Cubit<AuthStates> {
  AuthCubit() : super(InitialAuthStates());

  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController password = TextEditingController();

  signin() async {
    emit(LoadingAuthStates());
    var user = await sl<AuthRepo>()
        .signin(UserSignin(email: email.text, password: password.text));
    user.fold((error) => emit(FailureAuthStates(errorMessage: error)),
        (success) => emit(SuccessAuthStates()));
  }

  signup() async {
    emit(LoadingAuthStates());
    var user = await sl<AuthRepo>()
        .signup(UserSignup(email: email.text, password: password.text,
        phone: phone.text,name: name.text));
    user.fold((error) => emit(FailureAuthStates(errorMessage: error)),
        (success) => emit(SuccessAuthStates()));
  }
}
