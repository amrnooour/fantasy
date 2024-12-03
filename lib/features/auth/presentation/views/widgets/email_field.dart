import 'package:fantasy/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  final TextEditingController emailController;
  const EmailField({super.key, required this.emailController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: emailController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return "please enter an email";
          } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
            return 'Please enter a valid email';
          }
          return null;
        },
        keyboardType: TextInputType.emailAddress,
        hint: "enter your email",
        label: const Text("enter your email"),
        prefixIcon: const Icon(Icons.email));
  }
}
