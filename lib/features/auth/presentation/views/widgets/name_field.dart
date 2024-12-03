import 'package:fantasy/core/shared_widgets/custom_text_field.dart';
import 'package:flutter/material.dart';

class NameField extends StatelessWidget {
  final TextEditingController nameController;
  const NameField({super.key, required this.nameController});

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      label: const Text("enter your name"),
      hint: "enter your name",
      prefixIcon: const Icon(Icons.person),
      validator: (value) {
        if (value == null || value.isEmpty) {
                return 'Please enter your name';
              } else if (!RegExp(r'^[a-zA-Z\s]+$').hasMatch(value)) {
                return 'Name can only contain letters and spaces';
              } else if (value.length < 3) {
                return 'Name must be at least 3 characters long';
              } else if (value.length > 50) {
                return 'Name cannot be more than 50 characters';
              }
              return null; // Return null if valid
      },
      controller: nameController,
    );
  }
}
