import 'package:flutter/material.dart';
import '../theme.dart';

class ContactMentorTile extends StatelessWidget {
  const ContactMentorTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 160,
      margin: const EdgeInsets.only(
        right: 8,
      ),
      padding: const EdgeInsets.only(
        top: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: secondaryBlackColor,
      ),
      child: Column(
        children: [
          Image.asset(
            'assets/card.png',
            height: 40,
            width: 63,
          ),
          const SizedBox(height: 22),
          Text(
            'Mentor',
            style: primaryTextStyle,
          ),
          const SizedBox(height: 12),
          Text(
            'Programmer',
            style: primaryTextStyle.copyWith(
              fontSize: 12,
              fontWeight: semibold,
            ),
          ),
          const SizedBox(height: 32),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/chat-detail');
            },
            child: Container(
              height: 39,
              width: double.infinity,
              padding: const EdgeInsets.symmetric(
                vertical: 8,
              ),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(12),
                ),
                color: primaryColor,
              ),
              child: Image.asset(
                'assets/send.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
