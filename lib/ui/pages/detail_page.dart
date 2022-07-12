// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelholic/models/model_destination.dart';
import 'package:travelholic/ui/pages/choose_seat_page.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import 'package:travelholic/ui/widgets/photo_sites.dart';
import 'package:travelholic/ui/widgets/popular_sites.dart';
import '../../shared/theme.dart';

class DetailPage extends StatelessWidget {
  final ModelDestination model;

  const DetailPage(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget backgroundImage() {
      return Container(
        height: 450,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: NetworkImage(
              model.imageUrl,
            ),
          ),
        ),
      );
    }

    Widget customShadow() {
      return Container(
        height: 214,
        margin: EdgeInsets.only(top: 236),
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              whiteColor.withOpacity(0),
              Colors.black.withOpacity(0.95),
            ],
          ),
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          children: [
            // Bagian Emblem
            Container(
              width: 108,
              height: 24,
              margin: EdgeInsets.only(top: 30),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/emblem.png',
                  ),
                ),
              ),
            ),

            // Bagian Judul
            Container(
              margin: EdgeInsets.only(top: 256),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          model.name,
                          style: textWhite.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          model.city,
                          style: textWhite.copyWith(
                            fontSize: 16,
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 20,
                        width: 20,
                        margin: EdgeInsets.only(right: 2),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              'assets/image_star.png',
                            ),
                          ),
                        ),
                      ),
                      Text(
                        model.rating.toString(),
                        style: textWhite.copyWith(
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //Bagian About Place
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: 30),
              padding: EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 30,
              ),
              decoration: BoxDecoration(
                color: whiteColor,
                borderRadius: BorderRadius.circular(18),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About',
                    style: textBlack.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    model.description,
                    style: textBlack.copyWith(
                      height: 2,
                    ),
                  ),

                  //NOTE : PHOTOS SITE
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Popular Sites',
                    style: textBlack.copyWith(
                      fontSize: 16,
                      fontWeight: semiBold,
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: const [
                      PhotoSites(
                        imageUrl: 'assets/padar_island.jpeg',
                      ),
                      PhotoSites(
                        imageUrl: 'assets/pink_beach.jpg',
                      ),
                      PhotoSites(
                        imageUrl: 'assets/goa_rangko.jpg',
                      ),
                    ],
                  ),

                  //Bagian Nama Tempat Wisata Populer
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      PopularSites(
                        place: 'Padar Island',
                      ),
                      PopularSites(
                        place: 'Pink Beach',
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      PopularSites(
                        place: 'Rangko Cave',
                      ),
                    ],
                  ),
                ],
              ),
            ),

            //NOTE : Bagian button dan harga booking
            Container(
              margin: EdgeInsets.symmetric(vertical: 30),
              width: double.infinity,
              child: Row(
                children: [
                  //NOTE : Bagian harga
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          NumberFormat.currency(
                            locale: 'id',
                            symbol: 'Rp ',
                            decimalDigits: 0,
                          ).format(
                            model.price,
                          ),
                          style: textBlack.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                        ),
                      ],
                    ),
                  ),

                  //NOTE : Bagian Button Bookings
                  CustomButton(
                    title: 'Book Now',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ChooseSeatPages(),
                        ),
                      );
                    },
                    width: 170,
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SingleChildScrollView(
        child: Stack(
          children: [
            backgroundImage(),
            customShadow(),
            content(),
          ],
        ),
      ),
    );
  }
}
