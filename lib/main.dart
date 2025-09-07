import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/service_locator.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/app_router.dart';

void main() {
  setup();
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: kPrimaryColor,
        brightness: Brightness.dark,
        fontFamily: kPrimaryFont,
        appBarTheme: AppBarTheme(backgroundColor: kPrimaryColor),
        inputDecorationTheme: InputDecorationTheme(
          fillColor: kPrimaryColor,
          filled: true,
        ),
      ),
    );
  }
}
