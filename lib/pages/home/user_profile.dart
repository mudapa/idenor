import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        toolbarHeight: 120,
        centerTitle: true,
        backgroundColor: secondaryBlackColor,
        title: Text(
          'Account Settings',
          style: primaryTextStyle.copyWith(
            fontSize: 18,
            fontWeight: semibold,
          ),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
          ),
        ),
      );
    }

    Widget account() {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Account',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 15,
            ),
            child: Column(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/edit-profile');
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Edit Profile',
                        style: secondaryTextStyle,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: secondaryWhiteColor,
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: secondaryWhiteColor,
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 12,
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Change Password',
                      style: secondaryTextStyle,
                    ),
                    Icon(
                      Icons.chevron_right,
                      color: secondaryWhiteColor,
                    ),
                  ],
                ),
                Divider(
                  color: secondaryWhiteColor,
                ),
              ],
            ),
          ),
        ],
      );
    }

    Widget general() {
      return Container(
        margin: const EdgeInsets.only(
          top: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'General',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(
                top: 12,
                bottom: 32,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Log Out',
                        style: secondaryTextStyle,
                      ),
                      Icon(
                        Icons.chevron_right,
                        color: secondaryWhiteColor,
                      ),
                    ],
                  ),
                  Divider(
                    color: secondaryWhiteColor,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        padding: const EdgeInsets.only(
          top: 32,
          left: 30,
          right: 30,
        ),
        children: [
          account(),
          general(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: header(),
      body: content(),
    );
  }
}
