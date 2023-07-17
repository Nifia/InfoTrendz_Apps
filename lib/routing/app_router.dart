import 'package:go_router/go_router.dart';
import 'package:infotrendz/features/authentication/presentation/signUp/sign_up_screen.dart';
import 'package:infotrendz/features/authentication/presentation/splashscreen/splash_screen.dart';
import 'package:infotrendz/features/menu/presentation/detail_menu_screen.dart';
import 'package:infotrendz/features/news/presentation/detail_news_screen.dart';
import 'package:infotrendz/routing/main_screen.dart';
import '../features/authentication/presentation/account/edit_profile_screen.dart';
import '../features/authentication/presentation/account/profile_screen.dart';
import '../features/authentication/presentation/onboarding/onboarding_screen.dart';
import '../features/authentication/presentation/signIn/sign_in_screen.dart';
import '../features/menu/presentation/menu_screen.dart';
import '../features/saved/presentation/saved_screen.dart';

// Inisialisasi
enum AppRoute {
  splashScreen,
  onboarding,
  signIn,
  signUp,
  home,
  detailNews,
  profile,
  editProfile,
}

// Inisialisasi fungsi yang akan dipanggil dalam main.dart
final goRouter = GoRouter(
  initialLocation: '/', // Lokasi URL Awal saat aplikasi pertama kali dijalankan
  debugLogDiagnostics: true, // Untuk mengetahui pergerakan page dari console
  routes: [
    GoRoute(
      path: '/',
      name: AppRoute.splashScreen.name,
      builder: (context, state) => const SplashScreen(),
      routes: [
        GoRoute(
          path: 'onboarding',
          name: AppRoute.onboarding.name,
          builder: (context, state) => const OnboardingScreen(),
        ),
        GoRoute(
          path: 'sign-in',
          name: AppRoute.signIn.name,
          builder: (context, state) => const SignInScreen(),
        ),
        GoRoute(
          path: 'sign-up',
          name: AppRoute.signUp.name,
          builder: (context, state) => const SignUpScreen(),
        ),
        GoRoute(
          path: 'main',
          name: AppRoute.home.name,
          builder: (context, state) => const MainScreen(),
        ),
        GoRoute(
          path: 'saved',
          builder: (context, state) => const SavedScreen(),
        ),
        GoRoute(
          path: 'menu',
          builder: (context, state) => const MenuScreen(),
        ),
        GoRoute(
          path: 'detail-news',
          name: AppRoute.detailNews.name,
          builder: (context, state) => const DetailNewsScreen(),
        ),
        GoRoute(
          path: 'detail-menu',
          builder: (context, state) => const DetailMenuScreen(),
        ),
        GoRoute(
          path: 'profile',
          name: AppRoute.profile.name,
          builder: (context, state) => const ProfileScreen(),
        ),
        GoRoute(
          path: 'edit-profile',
          name: AppRoute.editProfile.name,
          builder: (context, state) => const EditProfileScreen(),
        ),
      ],
    ),
  ],
);
