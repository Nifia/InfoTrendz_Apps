import 'package:flutter/material.dart';
import 'package:infotrendz/common_widgets/policy_widget.dart';
import 'package:infotrendz/common_widgets/primary_button.dart';

import '../../../../common_widgets/custom_form_field_widget.dart';
import '../../../../constants/app_sizes.dart';
import '../../../../shared/theme.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final fullNameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        children: [
          gapH64,
          Text(
            'InfoTrendz Media ID',
            style: blackTextStyle.copyWith(
              fontSize: 24.0,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          gapH16,
          Text(
            'Daftar dengan InfoTrendz Media ID untuk untuk menggunakan\nlayanan-layanan dari InfoTrendz Media',
            style: blackTextStyle.copyWith(
              fontSize: 16.0,
            ),
            textAlign: TextAlign.center,
          ),
          gapH64,
          CustomFormFieldWidget(
            labelText: 'Nama Lengkap',
            controller: fullNameController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Email',
            controller: emailController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'No Handphone',
            controller: phoneController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Alamat',
            controller: addressController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Password',
            isObsecure: true,
            controller: passwordController,
          ),
          gapH64,
          PrimaryButton(
            text: "Daftar",
            onPressed: () {},
          ),
          gapH24,
          const PolicyWidget(),
          gapH64,
        ],
      ),
    );
  }
}
