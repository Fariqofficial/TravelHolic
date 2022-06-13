import 'package:flutter/material.dart';
import '../../shared/theme.dart';

//Membuat Reusable Widget

// ignore_for_file: prefer_const_constructors

class CustomNavBottomItem extends StatelessWidget {
  final bool isSelected;
  final String imageUrl;

  const CustomNavBottomItem({
    Key? key,
    required this.imageUrl,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(),
        Container(
          width: 24,
          height: 24,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imageUrl),
            ),
          ),
        ),
        Container(
          width: 30,
          height: 2,
          decoration: BoxDecoration(
            color: isSelected ? mikuColor : transparentColor,
            borderRadius: BorderRadius.circular(18),
          ),
        ),
      ],
    );
  }
}
