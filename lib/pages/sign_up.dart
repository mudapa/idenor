import 'package:flutter/material.dart';

import '../theme.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String fullName = '';

  set result(String result) {
    setState(() {
      fullName = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 32,
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 12,
        ),
        child: Text(
          'Sign Up',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: semibold,
          ),
        ),
      );
    }

    Widget card() {
      return Container(
        padding: const EdgeInsets.all(32),
        child: Stack(
          children: [
            Center(
              child: Container(
                width: 350,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: const DecorationImage(
                    image: AssetImage('assets/card-depan.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Center(
              child: Container(
                margin: const EdgeInsets.only(
                  left: 18,
                ),
                padding: const EdgeInsets.all(24),
                width: 350,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 75,
                      color: whiteColor,
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 12,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 70,
                            width: 70,
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius: BorderRadius.circular(40),
                            ),
                            child: Image.asset(
                              'assets/user.png',
                              color: whiteColor,
                            ),
                          ),
                          const SizedBox(width: 32),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'NAME      : $fullName',
                                  style: TextStyle(
                                    fontFamily: 'Future',
                                    fontSize: 12,
                                    color: whiteColor,
                                  ),
                                  maxLines: 1,
                                ),
                                Text(
                                  'DIVISI      : Test Divisi',
                                  style: TextStyle(
                                    fontFamily: 'Future',
                                    fontSize: 12,
                                    color: whiteColor,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(
                        top: 16,
                      ),
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const SizedBox(),
                          Text(
                            'CSA-042003001',
                            style: TextStyle(
                              fontFamily: 'Future',
                              fontSize: 18,
                              fontWeight: medium,
                              color: whiteColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget usernameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Username',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: secondaryBlackColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/user.png',
                      width: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Username',
                          hintStyle: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget fullnameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Full Name',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: secondaryBlackColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/name.png',
                      width: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        onChanged: (value) {
                          fullName = value;
                          result = fullName;
                        },
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Full Name',
                          hintStyle: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget emailInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Email Address',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: secondaryBlackColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/mail.png',
                      width: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Email Address',
                          hintStyle: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget passwordInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Password',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
            const SizedBox(height: 12),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                color: secondaryBlackColor,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Image.asset(
                      'assets/password.png',
                      width: 20,
                    ),
                    const SizedBox(width: 12),
                    Expanded(
                      child: TextFormField(
                        obscureText: true,
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Your Password',
                          hintStyle: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget signUpButton() {
      return Container(
        height: 45,
        margin: const EdgeInsets.only(
          top: 32,
        ),
        child: TextButton(
          onPressed: () {
            Navigator.pushNamed(context, '/splash-registrasi');
          },
          style: TextButton.styleFrom(
            backgroundColor: primaryColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Text(
            'Sign Up',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
        ),
      );
    }

    Widget footer() {
      return Container(
        margin: const EdgeInsets.only(
          top: 100,
          bottom: 32,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already have an account?',
              style: primaryTextStyle.copyWith(
                fontSize: 12,
              ),
            ),
            const SizedBox(width: 6),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Text(
                'Sign In',
                style: linkTextStyle.copyWith(
                  fontSize: 12,
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.all(16),
        children: [
          header(),
          card(),
          usernameInput(),
          fullnameInput(),
          emailInput(),
          passwordInput(),
          signUpButton(),
          footer(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: content(),
      ),
    );
  }
}
