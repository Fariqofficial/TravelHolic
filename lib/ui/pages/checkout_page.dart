// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:travelholic/ui/widgets/item_bookings.dart';
import 'package:travelholic/ui/widgets/item_button.dart';
import '../../shared/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget route() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Container(
              width: 291,
              height: 65,
              margin: EdgeInsets.only(bottom: 10),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    'assets/image_route.png',
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'CGK',
                      style: textBlack.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'Tangerang',
                      style: textGrey.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'LBJ',
                      style: textBlack.copyWith(
                        fontSize: 24,
                        fontWeight: semiBold,
                      ),
                    ),
                    Text(
                      'East Nusa Tenggara',
                      style: textGrey.copyWith(
                        fontWeight: light,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      );
    }

    Widget bookingDetail() {
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
                      image: AssetImage(
                        'assets/labuan.jpg',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Labuan Bajo',
                        style: textBlack.copyWith(
                          fontSize: 16,
                          fontWeight: medium,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'East Nusa Tenggara',
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
                      '4.8',
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
              valueText: '2 Person',
              valueClr: blackColor,
            ),
            BookingItem(
              title: 'Seat :',
              valueText: 'C5,D5',
              valueClr: blackColor,
            ),
            BookingItem(
              title: 'Snack :',
              valueText: 'YES',
              valueClr: borderAvailable,
            ),
            BookingItem(
              title: 'VAT :',
              valueText: '6%',
              valueClr: blackColor,
            ),
            BookingItem(
              title: 'Price :',
              valueText: 'Rp. 10.000.000',
              valueClr: blackColor,
            ),
            BookingItem(
              title: 'Total Price (Inc VAT) :',
              valueText: 'Rp. 10.600.000',
              valueClr: softredColor,
            ),
          ],
        ),
      );
    }

    Widget paymentMethod() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(
          vertical: 30,
          horizontal: 20,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          color: whiteColor,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Payment Details',
              style: textBlack.copyWith(
                fontSize: 16,
                fontWeight: semiBold,
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 70,
                    margin: EdgeInsets.only(right: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                          'assets/img_card.png',
                        ),
                      ),
                    ),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 35,
                            height: 35,
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
                    ),
                  ),

                  //NOTE : Bagian saldo
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Rp. 45.000.000',
                          style: textBlack.copyWith(
                            fontSize: 18,
                            fontWeight: medium,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Your Balance',
                          style: textGrey.copyWith(
                            fontWeight: light,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      );
    }

    Widget buttonPay() {
      return CustomButton(
        title: 'Pay Now',
        onPressed: () {},
        margin: EdgeInsets.only(top: 30),
      );
    }

    Widget termsCondition() {
      return Container(
        alignment: Alignment.center,
        margin: EdgeInsets.only(
          top: 30,
          bottom: 30,
        ),
        child: Text(
          'Terms and Conditions',
          style: textGrey.copyWith(
            fontSize: 16,
            fontWeight: light,
            decoration: TextDecoration.underline,
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          route(),
          bookingDetail(),
          paymentMethod(),
          buttonPay(),
          termsCondition(),
        ],
      ),
    );
  }
}
