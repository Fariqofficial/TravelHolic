// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class SeatItem extends StatelessWidget {
  //NOTE : 0. Available, 1. Selected, 2. Unavailable

  final int status;

  const SeatItem({
    Key? key,
    required this.status,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bgColor() {
      switch (status) {
        case 0:
          return colorAvailable;
        case 1:
          return colorSelected;
        case 2:
          return colorUnvailable;
        default:
          return colorUnvailable;
      }
    }

    borderColor() {
      switch (status) {
        case 0:
          return borderAvailable;
        case 1:
          return colorSelected;
        case 2:
          return colorUnvailable;
        default:
          return colorUnvailable;
      }
    }

    childText() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
            child: Text(
              'YOU',
              style: textWhite.copyWith(
                fontWeight: semiBold,
              ),
            ),
          );
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
      width: 48,
      height: 48,
      decoration: BoxDecoration(
        color: bgColor(),
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
          color: borderColor(),
        ),
      ),
      child: childText(),
    );
  }
}
