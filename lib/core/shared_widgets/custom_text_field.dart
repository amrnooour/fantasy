import 'package:fantasy/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final Widget? label;
  final String? hint;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final void Function()? onTap;
  const CustomTextField(
      {super.key,
      this.label,
      this.hint,
      this.controller,
      this.validator,
      this.suffixIcon,
      this.prefixIcon,
      this.obscureText = false,
      this.keyboardType, this.onTap,});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        label: label,
        hintText: hint,
        disabledBorder: buildBorder(),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primaryColor, width: 2),
        ),
        enabledBorder: buildBorder(),
        border: buildBorder(),
      ),
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      keyboardType: keyboardType,
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(26),
        borderSide: BorderSide(color: Colors.grey.withOpacity(.7)));
  }
}
