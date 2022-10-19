import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';
import 'package:idenor/widgets/contact_mentor_tile.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: const EdgeInsets.only(
          top: 34,
          left: 16,
          right: 16,
        ),
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
                Navigator.pushNamed(context, '/user-profile');
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
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'NAME      : Test Nama User',
                                style: TextStyle(
                                  fontFamily: 'Future',
                                  fontSize: 12,
                                  color: whiteColor,
                                ),
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

    Widget contactMentor() {
      return Container(
        margin: const EdgeInsets.only(
          top: 16,
          left: 16,
          right: 16,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Text(
          'Contact Mentor',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      );
    }

    Widget cardMentor() {
      return SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          vertical: 32,
          horizontal: 12,
        ),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            ContactMentorTile(),
            ContactMentorTile(),
            ContactMentorTile(),
            ContactMentorTile(),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          header(),
          card(),
          Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Divider(color: secondaryWhiteColor),
          ),
          contactMentor(),
          cardMentor(),
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
            onPressed: () {
              Navigator.pushNamed(context, '/chat');
            },
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
