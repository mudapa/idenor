import 'dart:async';

import 'package:flutter/material.dart';
import '../theme.dart';

class SplashRegister extends StatefulWidget {
  const SplashRegister({super.key});

  @override
  State<SplashRegister> createState() => _SplashRegisterState();
}

class _SplashRegisterState extends State<SplashRegister> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushNamedAndRemoveUntil(
          context, '/choose-divisi', (route) => false),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Thank you for registering please select a division',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              CircularProgressIndicator(
                color: whiteColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
