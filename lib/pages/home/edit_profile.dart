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

    Widget avatarUser() {
      return Container(
        margin: const EdgeInsets.only(
          top: 32,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(50),
          color: primaryColor,
        ),
        child: Image.asset(
          'assets/user.png',
          height: 100,
          color: whiteColor,
        ),
      );
    }

    Widget nameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 32,
          left: 16,
          right: 16,
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
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration(
                          hintText: 'Dude bray',
                          hintStyle: primaryTextStyle,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryWhiteColor,
                            ),
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

    Widget userNameInput() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
          left: 16,
          right: 16,
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
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration(
                          hintText: 'Dude bray',
                          hintStyle: primaryTextStyle,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryWhiteColor,
                            ),
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
          left: 16,
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              child: Text(
                'Email',
                style: primaryTextStyle.copyWith(
                  fontSize: 14,
                  fontWeight: medium,
                ),
              ),
            ),
            Container(
              height: 50,
              padding: const EdgeInsets.symmetric(
                horizontal: 12,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration(
                          hintText: 'Dude_bray@gmail.com',
                          hintStyle: primaryTextStyle,
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(
                              color: secondaryWhiteColor,
                            ),
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

    Widget content() {
      return Column(
        // padding: const EdgeInsets.all(16),
        children: [
          avatarUser(),
          nameInput(),
          userNameInput(),
          emailInput(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: header(),
      body: ListView(
        children: [
          content(),
        ],
      ),
    );
  }
}
