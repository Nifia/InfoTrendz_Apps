//form login (username dan password)
import 'package:flutter/material.dart';
import 'package:infotrendz/constants/app_sizes.dart';
import 'package:infotrendz/shared/theme.dart';

class CustomFormFieldWidget extends StatelessWidget {
  // Constructor Form
  const CustomFormFieldWidget({
    super.key,
    required this.labelText,
    this.controller,
    this.isObsecure = false,
  });
  // Property
  final String labelText;
  final bool isObsecure;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          // Widget untuk mengisi sebuah form
          controller: controller,
          obscureText: isObsecure,
          style: blackTextStyle,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              vertical: Sizes.p20,
              horizontal: Sizes.p16,
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                5,
              ),
            ),
            labelText: labelText,
          ),
        ),
      ],
    );
  }
}
