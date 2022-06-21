// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PopularSites extends StatelessWidget {
  final String place;

  const PopularSites({
    Key? key,
    required this.place,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.only(right: 6),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/pupular_place.png',
                ),
              ),
            ),
          ),
          Text(
            place,
            style: textBlack,
          ),
        ],
      ),
    );
  }
}
