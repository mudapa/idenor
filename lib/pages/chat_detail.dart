import 'package:flutter/material.dart';
import 'package:idenor/widgets/chat_bubble.dart';
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
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        children: const [
          ChatBubble(),
        ],
      );
    }

    Widget chatInput() {
      return Container(
        margin: const EdgeInsets.all(25),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 45,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    decoration: BoxDecoration(
                      color: secondaryBlackColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: TextFormField(
                        style: primaryTextStyle,
                        decoration: InputDecoration.collapsed(
                          hintText: 'Type Message ...',
                          hintStyle: secondaryTextStyle.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 12),
                Container(
                  width: 52,
                  height: 46,
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: primaryColor,
                  ),
                  child: Image.asset(
                    'assets/sent.png',
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      appBar: header(),
      body: Column(
        children: [
          Expanded(
            child: Container(
              child: content(),
            ),
          ),
          chatInput(),
        ],
      ),
    );
  }
}
