import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(top: 34),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Hallo, Dude',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sign-in');
              },
              child: Container(
                height: 50,
                width: 50,
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Image.asset(
                  'assets/user.png',
                  color: whiteColor,
                ),
              ),
            ),
          ],
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
                padding: const EdgeInsets.all(24),
                width: 350,
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Image.asset(
                      'assets/logo.png',
                      width: 57,
                      color: whiteColor,
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget contactMentor() {
      return Container(
        margin: const EdgeInsets.only(top: 16),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Contact Mentor',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.only(
          left: 16,
          right: 16,
          bottom: 32,
        ),
        children: [
          header(),
          card(),
          Divider(color: secondaryWhiteColor),
          contactMentor(),
        ],
      );
    }

    Widget chatButton() {
      return Container(
        margin: const EdgeInsets.only(
          left: 16,
          bottom: 32,
        ),
        height: 64,
        width: 64,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: primaryColor,
            onPressed: () {},
            child: Image.asset(
              'assets/chat.png',
              width: 32,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      floatingActionButton: chatButton(),
      body: SafeArea(
        child: content(),
      ),
    );
  }
}
