import 'package:flutter/material.dart';
import 'package:idenor/theme.dart';
import 'package:idenor/widgets/divisi_tile.dart';

class ChooseDivisi extends StatelessWidget {
  const ChooseDivisi({super.key});

  @override
  Widget build(BuildContext context) {
    Widget content() {
      return SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          padding: const EdgeInsets.only(
            top: 120,
          ),
          margin: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            children: [
              Text(
                'Choose Your Divisi',
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semibold,
                ),
              ),
              const SizedBox(height: 64),
              const DivisiTile(),
              const DivisiTile(),
              const DivisiTile(),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: blackColor,
      body: SafeArea(
        child: content(),
      ),
    );
  }
}
