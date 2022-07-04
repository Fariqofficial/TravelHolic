// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class BookingItem extends StatelessWidget {
  final String title;
  final String valueText;
  final Color valueClr;

  const BookingItem({
    Key? key,
    required this.title,
    required this.valueText,
    required this.valueClr,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/image_ceklis.png',
                ),
              ),
            ),
          ),
          Text(
            title,
            style: textBlack,
          ),
          Spacer(),
          Text(
            valueText,
            style: textBlack.copyWith(
              fontWeight: semiBold,
              color: valueClr,
            ),
          ),
        ],
      ),
    );
  }
}
