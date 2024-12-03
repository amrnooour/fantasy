import 'package:fantasy/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController passwordController;
  const PasswordField({super.key, required this.passwordController});

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool isVisible = false;
  bool obsecureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.passwordController,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'Please enter a password';
          } else if (value.length < 6) {
            return 'Password must be at least 6 characters';
          }
          return null;
        },
        hint: "enter your password",
        label: const Text("enter your password"),
        prefixIcon: const Icon(Icons.lock),
        obscureText: obsecureText,
        suffixIcon: IconButton(
            onPressed: () {
              isVisible = !isVisible;
              obsecureText = !obsecureText;
              setState(() {});
            },
            icon:
                Icon(obsecureText ? Icons.visibility_off : Icons.visibility)));
  }
}
