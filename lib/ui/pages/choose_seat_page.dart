// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:travelholic/cubit/seat_cubit.dart';
import 'package:travelholic/models/model_destination.dart';
import 'package:travelholic/models/model_transaction.dart';
import 'package:travelholic/ui/pages/checkout_page.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import 'package:travelholic/ui/widgets/item_seat.dart';
import '../../shared/theme.dart';

class ChooseSeatPages extends StatelessWidget {
  final ModelDestination model;

  const ChooseSeatPages(this.model, {Key? key}) : super(key: key);

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
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
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
                        id: 'A1',
                      ),
                      SeatItem(
                        id: 'B1',
                        isAvail: false,
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
                        id: 'c1',
                        isAvail: false,
                      ),
                      SeatItem(
                        id: 'D1',
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
                        id: 'A2',
                      ),
                      SeatItem(
                        id: 'B2',
                        isAvail: false,
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
                        id: 'C2',
                      ),
                      SeatItem(
                        id: 'D2',
                        isAvail: false,
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
                        id: 'A3',
                        isAvail: false,
                      ),
                      SeatItem(
                        id: 'B3',
                        isAvail: false,
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
                        id: 'C3',
                      ),
                      SeatItem(
                        id: 'D3',
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
                        id: 'A4',
                      ),
                      SeatItem(
                        id: 'B4',
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
                        id: 'C4',
                      ),
                      SeatItem(
                        id: 'D4',
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
                        id: 'A5',
                      ),
                      SeatItem(
                        id: 'B5',
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
                        id: 'C5',
                      ),
                      SeatItem(
                        id: 'D5',
                      ),
                    ],
                  ),
                ),

                //NOTE: Bagian Tempat Duduk Pilihan
                Container(
                  margin: EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Your Seat :',
                        style: textGrey.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        state.join(', '),
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                    ],
                  ),
                ),

                //NOTE : Bagian total harga
                Container(
                  margin: EdgeInsets.only(top: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Total :',
                        style: textGrey.copyWith(
                          fontWeight: light,
                        ),
                      ),
                      Text(
                        NumberFormat.currency(
                          locale: 'id',
                          symbol: 'Rp ',
                          decimalDigits: 0,
                        ).format(
                          state.length * model.price,
                        ),
                        style: textGreen.copyWith(
                          fontSize: 16,
                          fontWeight: semiBold,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      );
    }

    Widget btnCheckout() {
      return BlocBuilder<SeatCubit, List<String>>(
        builder: (context, state) {
          return CustomButton(
            margin: EdgeInsets.only(
              top: 30,
              bottom: 46,
            ),
            title: 'Go To Checkout',
            onPressed: () {
              int price = model.price * state.length;

              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CheckoutPage(
                    TransactionModel(
                      destination: model,
                      amountUser: state.length,
                      seatSelected: state.join(', '),
                      snack: true,
                      price: price,
                      vat: 0.6,
                      totalPrice: price + (price * 0.45).toInt(),
                    ),
                  ),
                ),
              );
            },
          );
        },
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
          btnCheckout(),
        ],
      ),
    );
  }
}
