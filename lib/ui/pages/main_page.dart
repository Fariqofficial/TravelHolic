// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_bottom_nav.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget bottomNavigationBar() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          margin: EdgeInsets.only(
            bottom: 30,
            left: defaultMargin,
            right: defaultMargin,
          ),
          width: double.infinity,
          height: 60,
          decoration: BoxDecoration(
            color: whiteColor,
            borderRadius: BorderRadius.circular(18),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomNavBottomItem(
                imageUrl: 'assets/ic_home.png',
                isSelected: true,
              ),
              CustomNavBottomItem(
                imageUrl: 'assets/ic_notif.png',
              ),
              CustomNavBottomItem(
                imageUrl: 'assets/ic_payment.png',
              ),
              CustomNavBottomItem(
                imageUrl: 'assets/ic_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(
        children: [
          Text('Main Page'),
          bottomNavigationBar(),
        ],
      ),
    );
  }
}
