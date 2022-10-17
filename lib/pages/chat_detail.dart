import 'package:flutter/material.dart';
import '../theme.dart';

class ChatDetail extends StatelessWidget {
  const ChatDetail({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        toolbarHeight: 120,
        backgroundColor: secondaryBlackColor,
        title: Row(
          children: [
            Container(
              height: 50,
              width: 50,
              padding: const EdgeInsets.all(9),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                color: whiteColor,
              ),
              child: Image.asset(
                'assets/user.png',
                width: 54,
              ),
            ),
            const SizedBox(width: 12),
            Text(
              'Mentor',
              style: primaryTextStyle.copyWith(
                fontSize: 16,
                fontWeight: medium,
              ),
            ),
          ],
        ),
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.chevron_left,
            size: 32,
          ),
        ),
      );
    }

    Widget content() {
      return ListView(
        children: const [],
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: header(),
      body: content(),
    );
  }
}
