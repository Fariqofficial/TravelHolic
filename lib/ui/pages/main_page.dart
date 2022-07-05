// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:travelholic/cubit/cubit_cubit.dart';
import 'package:travelholic/ui/pages/home_page.dart';
import 'package:travelholic/ui/pages/setting_pages.dart';
import 'package:travelholic/ui/pages/transaction_pages.dart';
import 'package:travelholic/ui/pages/wallet_pages.dart';
import 'package:travelholic/ui/widgets/item_bottom_nav.dart';
import '../../shared/theme.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget buildContent(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return HomePage();
        case 1:
          return TransactionPages();
        case 2:
          return WalletPages();
        case 3:
          return SettingPages();
        default:
          return HomePage();
      }
    }

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
                index: 0,
                imageUrl: 'assets/ic_home.png',
              ),
              CustomNavBottomItem(
                index: 1,
                imageUrl: 'assets/ic_notif.png',
              ),
              CustomNavBottomItem(
                index: 2,
                imageUrl: 'assets/ic_payment.png',
              ),
              CustomNavBottomItem(
                index: 3,
                imageUrl: 'assets/ic_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<CubitCubit, int>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backgroundColor,
          body: Stack(
            children: [
              buildContent(state),
              bottomNavigationBar(),
            ],
          ),
        );
      },
    );
  }
}
