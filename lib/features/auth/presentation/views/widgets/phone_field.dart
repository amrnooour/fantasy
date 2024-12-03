import 'package:fantasy/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  final TextEditingController phoneController;
  const PhoneField({super.key, required this.phoneController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: const Text("enter your phone"),
      hint: "enter your phone",
      prefixIcon: const Icon(Icons.phone),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter a phone number';
        } else if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
          return 'Please enter a valid phone number with digits only';
        } else if (value.length != 11) {
          return 'Phone number must be exactly 11 digits';
        }
        return null; // Return null if valid
      },
      controller: phoneController,
    );
  }
}
