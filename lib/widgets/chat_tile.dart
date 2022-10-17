import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';

class ChatTile extends StatelessWidget {
  const ChatTile({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/chat-detail');
      },
      child: Container(
        margin: const EdgeInsets.only(
          bottom: 16,
        ),
        child: Column(
          children: [
            Row(
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
                const SizedBox(width: 21),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Mentor',
                        style: primaryTextStyle.copyWith(
                          fontSize: 14,
                          fontWeight: medium,
                        ),
                      ),
                      Text(
                        'ya',
                        style: secondaryTextStyle.copyWith(
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  'Now',
                  style: secondaryTextStyle.copyWith(
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Divider(
              thickness: 1,
              color: secondaryBlackColor,
            ),
          ],
        ),
      ),
    );
  }
}
