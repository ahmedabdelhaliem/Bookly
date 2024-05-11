import 'package:bookly_mvvm/constant.dart';
import 'package:bookly_mvvm/features/splash/presentation/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const BooklyApp());
}

class BooklyApp extends StatelessWidget {
  const BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimary,
          textTheme:
              GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme)),
      getPages: [
        GetPage(name: '/splash', page: () => const SplashView()),
        // يمكنك تحديد المزيد من الشاشات هنا بنفس الطريقة
      ],
      initialRoute: '/splash',
    );
  }
}
