import 'package:flutter/material.dart';
import 'package:idenor/pages/sign_in.dart';
import 'package:idenor/pages/splash_screen.dart';

void main() => runApp(const Idenor());

class Idenor extends StatelessWidget {
  const Idenor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/sign-in': (context) => const SignIn(),
      },
    );
  }
}
