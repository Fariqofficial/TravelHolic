// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../../shared/theme.dart';

class PopularSites extends StatelessWidget {
  final String place;

  const PopularSites({
    Key? key,
    this.place = '',
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            width: 16,
            height: 16,
            margin: EdgeInsets.symmetric(vertical: 8),
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
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
