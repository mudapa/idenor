import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';
import 'package:idenor/widgets/chat_tile.dart';

class Chat extends StatelessWidget {
  const Chat({super.key});

  @override
  Widget build(BuildContext context) {
    header() {
      return AppBar(
        toolbarHeight: 120,
        backgroundColor: secondaryBlackColor,
        centerTitle: true,
        title: Text(
          'Message',
          style: primaryTextStyle.copyWith(
            fontSize: 24,
            fontWeight: medium,
          ),
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
        padding: const EdgeInsets.only(
          right: 16,
          left: 16,
          top: 34,
        ),
        children: const [
          ChatTile(),
        ],
      );
    }

    return Scaffold(
      appBar: header(),
      backgroundColor: blackColor,
      body: content(),
    );
  }
}
