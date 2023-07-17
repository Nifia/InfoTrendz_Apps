// Fitur Sign In
import 'package:flutter/material.dart';
import 'package:infotrendz/constants/app_sizes.dart';
import 'package:infotrendz/routing/app_router.dart';
import 'package:go_router/go_router.dart';
import '../../../../common_widgets/custom_form_field_widget.dart';
import '../../../../common_widgets/primary_button.dart';
import '../../../../common_widgets/custom_text_button.dart';
import '../../../../shared/theme.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        children: [
          gapH64,
          RichText(
            textAlign: TextAlign.center,
            text: TextSpan(
              text: 'Akses',
              style: blackTextStyle.copyWith(
                fontSize: 24.0,
                fontWeight: bold,
              ),
              children: [
                TextSpan(
                  text: 'Fitur Lengkap',
                  style: blackTextStyle.copyWith(
                    fontSize: 24.0,
                    color: whiteColor,
                    backgroundColor: orangeColor,
                    fontWeight: bold,
                  ),
                ),
              ],
            ),
          ),
          Text(
            'dengan akunmu',
            style: blackTextStyle.copyWith(
              fontSize: 16.0,
              fontWeight: bold,
            ),
            textAlign: TextAlign.center,
          ),
          gapH64,
          CustomFormFieldWidget(
            labelText: 'Email',
            controller: emailController,
          ),
          gapH32,
          CustomFormFieldWidget(
            labelText: 'Password',
            controller: passwordController,
            isObsecure: true,
          ),
          gapH64,
          PrimaryButton(
            text: 'Login',
            onPressed: () {},
          ),
          gapH32,
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTextButton(
                text: 'Tidak punya akun?',
                onPressed: () {
                  context.pushNamed(AppRoute.signUp.name);
                },
                style: blueTextStyle.copyWith(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
              gapH16,
              Text(
                'atau',
                style: greyTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              gapH12,
              CustomTextButton(
                text: 'Nanti saja',
                style: blackTextStyle.copyWith(
                  fontSize: 18,
                  fontWeight: medium,
                ),
                onPressed: () {
                  context.pushNamed(AppRoute.home.name);
                },
              )
            ],
          ),
        ],
      ),
    );
  }
}
