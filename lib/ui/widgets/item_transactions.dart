// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:travelholic/models/model_transaction.dart';
import '../../shared/theme.dart';
import 'item_bookings.dart';

class TransactionItems extends StatelessWidget {
  final TransactionModel model;

  const TransactionItems(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
          //NOTE : Bagian informasi destinasi tujuan
          Row(
            children: [
              Container(
                width: 70,
                height: 70,
                margin: EdgeInsets.only(right: 16),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      model.destination.imageUrl,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.destination.name,
                      style: textBlack.copyWith(
                        fontSize: 16,
                        fontWeight: medium,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      model.destination.city,
                      style: textGrey.copyWith(
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
                    model.destination.rating.toString(),
                    style: textBlack.copyWith(
                      fontWeight: medium,
                    ),
                  ),
                ],
              ),
            ],
          ),

          //NOTE : Bagian judul booking detail
          Container(
            margin: EdgeInsets.only(top: 20),
            child: Text(
              'Booking Details',
              style: textBlack.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
          ),

          //NOTE : Item booking
          BookingItem(
            title: 'Person :',
            valueText: '${model.amountUser} Person',
            valueClr: blackColor,
          ),
          BookingItem(
            title: 'Seat :',
            valueText: model.seatSelected,
            valueClr: blackColor,
          ),
          BookingItem(
            title: 'Snack :',
            valueText: model.snack ? 'YES' : 'NO',
            valueClr: model.snack ? borderAvailable : softredColor,
          ),
          BookingItem(
            title: 'VAT :',
            valueText: '${(model.vat * 100).toStringAsFixed(0)}%',
            valueClr: blackColor,
          ),
          BookingItem(
            title: 'Price :',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'Rp ',
              decimalDigits: 0,
            ).format(model.price),
            valueClr: blackColor,
          ),
          BookingItem(
            title: 'Total Price (Inc VAT) :',
            valueText: NumberFormat.currency(
              locale: 'id',
              symbol: 'Rp ',
              decimalDigits: 0,
            ).format(model.totalPrice),
            valueClr: softredColor,
          ),
        ],
      ),
    );
  }
}
