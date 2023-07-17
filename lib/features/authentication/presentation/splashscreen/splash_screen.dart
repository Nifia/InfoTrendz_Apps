//halaman yang muncul sebelum menu aplikasi
import 'package:flutter/material.dart';
import 'package:infotrendz/shared/theme.dart';

import '../onboarding/onboarding_screen.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 3), //dijalankan selama 3 detik
      () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        ),
      ),
    );

    return Scaffold(
      backgroundColor: blackColor,
      body: Center(
        child: Image.asset(
          'assets/info_trendz.png',
        ),
      ),
    );
  }
}
