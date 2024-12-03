import 'package:fantasy/features/auth/presentation/views/widgets/signup_body.dart';
import 'package:flutter/material.dart';

class Signup extends StatelessWidget {
  const Signup({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.white,
      body: SignupBody(),
    );
  }
}