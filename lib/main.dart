import 'package:eas_ppb/dompet_page.dart';
import 'package:eas_ppb/home_page.dart';
import 'package:eas_ppb/profile_page.dart';
import 'package:eas_ppb/toko_page.dart';
import 'package:eas_ppb/topup_page.dart';
import 'package:flutter/material.dart';
import 'login_page.dart';
import 'register_page.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const SplashScreen(),
        '/home': (context) => const HomePage(),
        '/register': (context) => const RegisterPage(),
        '/login': (context) => const LoginPage(),
        '/toko': (context) => const TokoPage(),
        '/profile': (context) => const ProfilePage(),
        '/dompet': (context) => const DompetPage(),
        '/topup': (context) => const TopupPage(),
      },
    );
  }
}
