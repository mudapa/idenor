import 'package:flutter/material.dart';
import 'package:idenor/pages/home/chat.dart';
import 'package:idenor/pages/home/choose_divisi.dart';
import 'package:idenor/pages/home/home.dart';
import 'package:idenor/pages/sign_in.dart';
import 'package:idenor/pages/sign_up.dart';
import 'package:idenor/pages/splash_register.dart';
import 'package:idenor/pages/splash_screen.dart';
import 'package:idenor/pages/chat_detail.dart';

void main() => runApp(const Idenor());

class Idenor extends StatelessWidget {
  const Idenor({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashScreen(),
        '/splash-registrasi': (context) => const SplashRegister(),
        '/sign-in': (context) => const SignIn(),
        '/sign-up': (context) => const SignUp(),
        '/choose-divisi': (context) => const ChooseDivisi(),
        '/home': (context) => const Home(),
        '/chat': (context) => const Chat(),
        '/chat-detail': (context) => const ChatDetail(),
      },
    );
  }
}
