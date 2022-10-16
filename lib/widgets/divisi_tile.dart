import 'package:flutter/material.dart';
import '../theme.dart';

class DivisiTile extends StatelessWidget {
  const DivisiTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 125,
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: whiteColor,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 95,
            width: 95,
            padding: const EdgeInsets.all(25),
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Image.asset(
              'assets/programmer.png',
            ),
          ),
          Text(
            'Programmer',
            style: primaryTextStyle.copyWith(
              fontSize: 14,
              fontWeight: medium,
            ),
          ),
          Icon(
            Icons.chevron_right,
            color: whiteColor,
          ),
        ],
      ),
    );
  }
}
