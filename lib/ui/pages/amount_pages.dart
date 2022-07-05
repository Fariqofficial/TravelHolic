// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import '../../shared/theme.dart';

class AmountPages extends StatelessWidget {
  const AmountPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget amountCard() {
      return Container(
        width: 300,
        height: 211,
        padding: EdgeInsets.all(defaultMargin),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img_card.png',
            ),
          ),
          boxShadow: [
            BoxShadow(
              color: primaryColor.withOpacity(0.5),
              blurRadius: 50,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Hello',
                        style: textWhite.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        'Username',
                        style: textWhite.copyWith(
                          fontWeight: medium,
                          fontSize: 20,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 30,
                  height: 30,
                  margin: EdgeInsets.only(right: 6),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/image_travelh.png',
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 41,
            ),
            Text(
              'Balance',
              style: textWhite.copyWith(
                fontWeight: light,
              ),
            ),
            Text(
              'Rp 0',
              style: textWhite.copyWith(
                fontWeight: medium,
                fontSize: 26,
              ),
            ),
          ],
        ),
      );
    }

    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 80),
        child: Text(
          'Congratulations 🎉',
          style: textBlack.copyWith(
            fontSize: 32,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget subtitle() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Text(
          'Your account has been created,\nstart travel now and get\nspecial offers from us',
          style: textGrey.copyWith(
            fontSize: 16,
            fontWeight: light,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    Widget buttonStart() {
      return CustomButton(
        title: 'Start Now',
        width: 220,
        margin: EdgeInsets.only(
          top: 50,
        ),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, '/main', (route) => false);
        },
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            amountCard(),
            title(),
            subtitle(),
            buttonStart(),
          ],
        ),
      ),
    );
  }
}
