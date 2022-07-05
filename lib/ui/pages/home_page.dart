import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/auth_cubit.dart';
import 'package:travelholic/ui/widgets/destination_tile.dart';
import 'package:travelholic/ui/widgets/item_destination.dart';
import '../../shared/theme.dart';

// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          if (state is AuthSuccess) {
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
                          'Hello,\n${state.modelUser.name}',
                          style: textBlack.copyWith(
                            fontSize: 24,
                            fontWeight: semiBold,
                          ),
                        ),
                        SizedBox(
                          height: 6,
                        ),
                        Text(
                          'Where do you travel today? ^^',
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
          } else {
            return SizedBox();
          }
        },
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
              DestinationItem(
                title: 'White Crater',
                city: 'Central Java',
                imageUrl: 'assets/kawah_putih.jpg',
                rating: 4.6,
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestination() {
      return Container(
        margin: EdgeInsets.only(
          top: 30,
          right: defaultMargin,
          left: defaultMargin,
          bottom: 100,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Most Visited This Year',
              style: textBlack.copyWith(
                fontSize: 18,
                fontWeight: semiBold,
              ),
            ),
            DestinationTile(
              name: 'White Sand Beach',
              city: 'North Jakarta',
              imageUrl: 'assets/white_sand.jpg',
              rating: 4.8,
            ),
            DestinationTile(
              name: 'Pandawa Beach',
              city: 'Bali',
              imageUrl: 'assets/pandawa.jpg',
              rating: 4.7,
            ),
            DestinationTile(
              name: 'Forest Orchid',
              city: 'Lembang, West Java',
              imageUrl: 'assets/forest_orchid.jpg',
              rating: 4.6,
            ),
            DestinationTile(
              name: 'Bogor Botanical Garden',
              city: 'Bogor, West Java',
              imageUrl: 'assets/kebun_raya_bogor.jpg',
              rating: 4.6,
            ),
            DestinationTile(
              name: 'Malioboro',
              city: 'Yogyakarta',
              imageUrl: 'assets/malioboro.jpg',
              rating: 4.5,
            ),
          ],
        ),
      );
    }

    return ListView(
      children: [
        header(),
        popularDestination(),
        newDestination(),
      ],
    );
  }
}
