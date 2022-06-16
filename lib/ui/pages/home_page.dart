import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_destination.dart';
import '../../shared/theme.dart';

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          left: defaultMargin,
          right: defaultMargin,
          top: 30,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hello,\nUsername',
                    style: textBlack.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Where do you travel today? :)',
                    style: textGrey.copyWith(
                      fontSize: 16,
                      fontWeight: light,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_ava.png',
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              DestinationItem(
                title: 'Labuan Bajo',
                city: 'East Nusa Tenggara',
                imageUrl: 'assets/labuan.jpg',
                rating: 4.8,
              ),
              DestinationItem(
                title: 'Mountain Bromo',
                city: 'East Java',
                imageUrl: 'assets/bromo.jpg',
                rating: 4.7,
              ),
              DestinationItem(
                title: 'Garuda Wisnu Kencana',
                city: 'Bali',
                imageUrl: 'assets/gwk.jpeg',
                rating: 4.7,
              ),
              DestinationItem(
                title: 'Borobudur Temple',
                city: 'Central Java',
                imageUrl: 'assets/borobudur.jpeg',
                rating: 4.6,
              ),
            ],
          ),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
      ],
    );
  }
}