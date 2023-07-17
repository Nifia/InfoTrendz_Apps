import 'package:flutter/material.dart';
import 'package:infotrendz/routing/app_router.dart';
import 'package:infotrendz/shared/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          scaffoldBackgroundColor: whiteColor,
          appBarTheme: const AppBarTheme(
            //seting appbar
            actionsIconTheme: IconThemeData(),
            backgroundColor: Colors.black,
            foregroundColor: Colors.white,
            elevation: 0,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black, //background button color
              foregroundColor: Colors.white, //foreground text color
            ),
          ),
          iconTheme: const IconThemeData(
            //seting icon theme
            color: Colors.white,
          )),
      routerConfig: goRouter,
    );
  }
}
