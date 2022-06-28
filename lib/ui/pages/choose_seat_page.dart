// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_seat.dart';
import '../../shared/theme.dart';

class ChooseSeatPages extends StatelessWidget {
  const ChooseSeatPages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text(
          'Please Select\nYour Seat',
          style: textBlack.copyWith(
            fontSize: 24,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget statusSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            //NOTE : Bagian Status Kursi Available
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_available.png',
                  ),
                ),
              ),
            ),
            Text(
              'Available',
              style: textBlack,
            ),

            //NOTE : Bagian Status Kursi Selected
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(
                left: 15,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_selected.png',
                  ),
                ),
              ),
            ),
            Text(
              'Selected',
              style: textBlack,
            ),

            //NOTE : Bagian Status Kursi Unavailable
            Container(
              height: 16,
              width: 16,
              margin: EdgeInsets.only(
                left: 15,
                right: 6,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/img_unavailable.png',
                  ),
                ),
              ),
            ),
            Text(
              'Unavailable',
              style: textBlack,
            ),
          ],
        ),
      );
    }

    Widget selectSeat() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 22,
          vertical: 30,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: whiteColor,
        ),
        child: Column(
          children: [
            //NOTE : Indikator Seat
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'A',
                      style: textGrey.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'B',
                      style: textGrey.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      '',
                      style: textGrey.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'C',
                      style: textGrey.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 48,
                  height: 48,
                  child: Center(
                    child: Text(
                      'D',
                      style: textGrey.copyWith(
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            //NOTE : Bagian Seat Pertama
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 49,
                    child: Center(
                      child: Text(
                        '1',
                        style: textGrey.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            //NOTE : Bagian Seat Kedua
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 49,
                    child: Center(
                      child: Text(
                        '2',
                        style: textGrey.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            //NOTE : Bagian Seat Ketiga
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 49,
                    child: Center(
                      child: Text(
                        '3',
                        style: textGrey.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            //NOTE : Bagian Seat Keempat
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 0,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 49,
                    child: Center(
                      child: Text(
                        '4',
                        style: textGrey.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            //NOTE : Bagian Seat Kelima
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SeatItem(
                    status: 2,
                  ),
                  SeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 49,
                    child: Center(
                      child: Text(
                        '5',
                        style: textGrey.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ),
                  SeatItem(
                    status: 1,
                  ),
                  SeatItem(
                    status: 1,
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: 24,
        ),
        children: [
          title(),
          statusSeat(),
          selectSeat(),
        ],
      ),
    );
  }
}
