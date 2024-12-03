import 'package:fantasy/core/constants/app_assets.dart';
import 'package:fantasy/core/router/navigation.dart';
import 'package:fantasy/core/router/routes_names.dart';
import 'package:fantasy/core/theme/app_styles.dart';
import 'package:fantasy/features/auth/presentation/view_model/auth_cubit.dart';
import 'package:fantasy/features/auth/presentation/view_model/auth_states.dart';
import 'package:fantasy/features/auth/presentation/views/widgets/email_field.dart';
import 'package:fantasy/features/auth/presentation/views/widgets/have_an_account.dart';
import 'package:fantasy/features/auth/presentation/views/widgets/name_field.dart';
import 'package:fantasy/features/auth/presentation/views/widgets/password_field.dart';
import 'package:fantasy/features/auth/presentation/views/widgets/phone_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/shared_widgets/custom_button.dart';

class SignupBody extends StatelessWidget {
  const SignupBody({super.key});

  @override
  Widget build(BuildContext context) {
    AuthCubit cubit = context.read();
    var key = GlobalKey<FormState>();
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 20.h),
          child: Form(
            key: key,
            child: BlocConsumer<AuthCubit, AuthStates>(
              listener: (context, state) {
                if (state is SuccessAuthStates) {
                  customReplacementNavigate(context, RoutesNames.home);
                  const Text("Success");
                } else if (state is FailureAuthStates) {
                  var snackbar = SnackBar(
                    content: Text(state.errorMessage),
                    behavior: SnackBarBehavior.floating,
                  );
                  ScaffoldMessenger.of(context).showSnackBar(snackbar);
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      AppAssets.logo2,
                      width: 250.w,
                      height: 270.h,
                      fit: BoxFit.cover,
                    ),
                    Center(
                      child: Text(
                        "Register To New Account",
                        style: AppStyles.size32Weight700black
                            .copyWith(fontSize: 24.sp),
                      ),
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    NameField(nameController: cubit.name),
                    SizedBox(
                      height: 20.h,
                    ),
                    EmailField(
                      emailController: cubit.email,
                    ),
                    SizedBox(
                      height: 20.h,
                    ),
                    PhoneField(phoneController: cubit.phone),
                    SizedBox(
                      height: 20.h,
                    ),
                    PasswordField(
                      passwordController: cubit.password,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    state is LoadingAuthStates
                        ? const Center(
                            child: CircularProgressIndicator(),
                          )
                        : CustomButton(
                            title: "Sign up",
                            onTap: () {
                              if (key.currentState!.validate()) {
                                cubit.signup();
                              } else {}
                            },
                          ),
                    SizedBox(
                      height: 30.h,
                    ),
                    HaveAnAccount(
                      onTap: () {
                        customNavigation(context, RoutesNames.signin);
                      },
                    )
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
