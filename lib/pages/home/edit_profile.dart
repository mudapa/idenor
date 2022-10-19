import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        title: Text(
          'Edit Profile',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
        backgroundColor: secondaryBlackColor,
        actions: const [
          Padding(
            padding: EdgeInsets.all(24),
            child: Icon(
              Icons.done,
            ),
          ),
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.symmetric(
          vertical: 32,
        ),
        child: Column(
          children: [
            Container(
              width: 105,
              height: 105,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: primaryColor,
              ),
              child: Image.asset(
                'assets/user.png',
                color: whiteColor,
              ),
            ),
            const SizedBox(height: 32),
            Text(
              'Full Name',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: header(),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        children: [
          content(),
        ],
      ),
    );
  }
}
